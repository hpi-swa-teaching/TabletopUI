roll for initiative
executeFinalizationCommandAs: aTTPlayer

	(aTTPlayer isGamemaster) ifFalse: [
		^ self ErrorNotAuthorised].
	(self rolls size < 2) ifTrue: [
		^self ErrorNotEnoughPlayers].
	
	self startFight.
	^ 'The fight begins!'