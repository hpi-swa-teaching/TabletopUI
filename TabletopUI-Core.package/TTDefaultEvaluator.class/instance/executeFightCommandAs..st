roll for initiative
executeFightCommandAs: aTTCharacter

	(aTTCharacter isGamemaster) ifTrue: [
		self inputField changeToInitiativeEvaluator.
		^ self startedInitiative]
	ifFalse: [
		^ self ErrorNotAuthorised]
