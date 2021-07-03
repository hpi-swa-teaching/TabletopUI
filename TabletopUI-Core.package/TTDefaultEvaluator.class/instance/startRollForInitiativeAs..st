roll for initiative
startRollForInitiativeAs: aTTPlayer

	(aTTPlayer isGamemaster) ifTrue: [
		self inputField changeToInitiativeEvaluator.
		^ 'Started Roll for Initiative']
	ifFalse: [
		^ self ErrorNotAuthorised]
