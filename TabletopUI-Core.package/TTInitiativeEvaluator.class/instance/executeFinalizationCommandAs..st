roll for initiative
executeFinalizationCommandAs: aTTCharacter

	(aTTCharacter isGamemaster) ifFalse: [
		^ self messageNotAuthorised].
	(self rolls size < 2) ifTrue: [
		^self messageNotEnoughPlayers].
	
	self startFight.
	^ self messageFightBegins