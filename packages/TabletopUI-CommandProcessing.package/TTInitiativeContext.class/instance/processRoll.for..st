accessing
processRoll: aValue for: aTTCharacter

	(self hasRolled: aTTCharacter) ifTrue: [^ self multipleRollsMessageString].
	aTTCharacter isGamemaster ifTrue: [^ self onlyPlayersRollMessageString].
	self parser updateInitiativeRoll: aValue for: aTTCharacter.
	^ nil