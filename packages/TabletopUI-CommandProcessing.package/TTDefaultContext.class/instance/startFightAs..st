actions
startFightAs: aTTCharacter

	(aTTCharacter isGamemaster) ifTrue: [
		self parser updateToInitiativeContext.
		^ self messageStartedInitiative]
	ifFalse: [
		^ self onlyGMIsAllowedMessageString]
