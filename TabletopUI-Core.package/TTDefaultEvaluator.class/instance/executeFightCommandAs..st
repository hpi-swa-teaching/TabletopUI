roll for initiative
executeFightCommandAs: aTTCharacter

	(aTTCharacter isGamemaster) ifTrue: [
		self inputField changeToInitiativeEvaluator.
		^ 'Started Roll for Initiative']
	ifFalse: [
		^ self ErrorNotAuthorised]
