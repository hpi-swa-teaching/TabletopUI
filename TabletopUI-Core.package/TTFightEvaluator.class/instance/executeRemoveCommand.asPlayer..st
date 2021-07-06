input evaluation
executeRemoveCommand: aString asPlayer: aTTPlayer

	| removedName removedPlayer |
	
	(aTTPlayer isGamemaster) ifFalse: [
		^ 'FIGHT: ' , (self ErrorNotAuthorised)].
	removedName := aString copyAfter: Character space.
	removedPlayer := self fightingPlayers detect: [:aTTCharacter | aTTCharacter name = removedName]
		ifNone: [^ 'FIGHT: ' , (self ErrorNotInFight: removedName)].
	self removePlayer: removedPlayer.
	^ 'FIGHT: Removed ' , aTTPlayer name , ' from fight.'