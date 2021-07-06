roll for initiative
executeFightCommandAs: aTTPlayer

	(aTTPlayer isGamemaster) ifTrue: [
		self inputField changeToInitiativeEvaluator.
		^ 'Started Roll for Initiative']
	ifFalse: [
		^ self ErrorNotAuthorised]
