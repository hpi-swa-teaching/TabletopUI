actions
startFightAs: aTTCharacter

	(aTTCharacter isGamemaster) ifTrue: [
		self parser changeToInitiativeContext.
		^ self messageStartedInitiative]
	ifFalse: [
		^ self onlyGMIsAllowedMessageString]
