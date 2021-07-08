input evaluation
executeRemoveCommand: aString as: aTTCharacter

	| removedName removedPlayer |
	
	(aTTCharacter isGamemaster) ifFalse: [
		^ 'FIGHT: ' , (self ErrorNotAuthorised)].
	removedName := aString copyAfter: Character space.
	removedPlayer := self fightingPlayers detect: [:player | player name = removedName]
		ifNone: [^ 'FIGHT: ' , (self ErrorNotInFight: removedName)].
	self removePlayer: removedPlayer.
	^ 'FIGHT: Removed ' , aTTCharacter name , ' from fight.'