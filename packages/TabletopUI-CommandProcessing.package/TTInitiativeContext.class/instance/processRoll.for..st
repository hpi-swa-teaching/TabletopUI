accessing
processRoll: aValue for: aTTCharacter

	(self hasRolled: aTTCharacter) ifTrue: [^ self multipleRollsMessageString].
	aTTCharacter isGamemaster ifTrue: [^ self onlyPlayersRollMessageString].
	self rolls add: aTTCharacter -> aValue.
	self changed: #initiativeState.
	^ nil