actions
startFightAs: aTTCharacter

	(aTTCharacter isGamemaster) ifTrue: [
		self parser updateToInitiaiveContext.
		^ self messageStartedInitiative]
	ifFalse: [
		^ self onlyGMIsAllowedMessageString]
