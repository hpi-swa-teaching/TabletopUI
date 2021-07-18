input evaluation
executeRemoveCommand: aString as: aTTCharacter

	| removedName removedPlayer |
	
	(aTTCharacter isGamemaster) ifFalse: [
		^ 'FIGHT: ' , (self messageNotAuthorised)].
	removedName := aString copyAfter: Character space.
	removedPlayer := self fightingPlayers detect: [:player | player name = removedName]
		ifNone: [^ 'FIGHT: ' , (self messageNotInFight: removedName)].
	self removePlayer: removedPlayer.
	^ 'FIGHT: Removed ' , removedName, ' from fight.'