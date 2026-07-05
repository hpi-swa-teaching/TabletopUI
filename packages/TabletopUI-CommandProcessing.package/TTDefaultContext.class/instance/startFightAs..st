actions
startFightAs: aTTCharacter

	(aTTCharacter isGamemaster) ifTrue: [
		self manager updateToInitiativeContext.
		^ self messageStartedInitiative]
	ifFalse: [
		^ self onlyGMIsAllowedMessageString]
