input evaluation
executeRemoveCommand: aString asPlayer: aTTPlayer

	| output removedName removedPlayer |
	
	(aTTPlayer isGamemaster) ifTrue: [
		removedName := aString copyAfter: Character space.
		removedPlayer := self fightingPlayers detect: [:aFightingTTPlayer | aFightingTTPlayer name = removedName] ifNone: [
			^ 'FIGHT: ' , self ErrorNotInFIght: aTTPlayer].
		self removePlayer: removedPlayer.
		output := 'removed ' , removedName , ' from fight.']
	ifFalse: [
		output := self ErrorNotAuthorised].
		
	^ 'FIGHT:  ', output