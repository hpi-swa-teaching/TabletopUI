accessing
processRoll: aValue for: aTTCharacter

	(self hasRolled: aTTCharacter) ifTrue: [^ self multipleRollsMessageString].
	aTTCharacter isGamemaster ifTrue: [^ self onlyPlayersRollMessageString].
	self manager updateInitiativeRoll: aValue for: aTTCharacter.
	^ nil