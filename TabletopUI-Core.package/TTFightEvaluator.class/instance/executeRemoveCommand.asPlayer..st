input evaluation
executeRemoveCommand: aString asPlayer: aTTPlayer

	| removedName removedPlayer |
	
	(aTTPlayer isGamemaster) ifTrue: [
		removedName := aString copyAfter: Character space.
		removedPlayer := self fightingPlayers detect: [:aTTCharacter | aTTCharacter name = removedName] ifNone: [
			^ 'FIGHT: ' , (self ErrorNotInFight: removedName)].
		^ self removePlayer: removedPlayer]
	ifFalse: [
		^ self ErrorNotAuthorised]