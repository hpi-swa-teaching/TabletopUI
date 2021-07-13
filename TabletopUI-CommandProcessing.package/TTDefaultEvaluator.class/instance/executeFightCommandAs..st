roll for initiative
executeFightCommandAs: aTTCharacter

	(aTTCharacter isGamemaster) ifTrue: [
		self inputField changeToInitiativeEvaluator.
		^ self messageStartedInitiative]
	ifFalse: [
		^ self messageNotAuthorised]
