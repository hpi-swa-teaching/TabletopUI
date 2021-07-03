roll for initiative
endRollForInitiativeAs: aTTPlayer

	(aTTPlayer isGamemaster) ifTrue: [
		(self rolls size < 2) ifTrue: [
			^ 'At least 2 characters have to participate in a fight.']
		ifFalse: [
			^ self startFight]]
	ifFalse: [
		^ self ErrorNotAuthorised]