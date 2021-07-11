roll for initiative
executeFinalizationCommandAs: aTTCharacter

	(aTTCharacter isGamemaster) ifFalse: [
		^ self ErrorNotAuthorised].
	(self rolls size < 2) ifTrue: [
		^self ErrorNotEnoughPlayers].
	
	self startFight.
	^ self fightBegins