roll for initiative
processRoll: aValue for: aTTCharacter

	(self hasRolled: aTTCharacter) ifTrue: [^ self multipleRollsMessageString].
	aTTCharacter isGamemaster ifTrue: [^ self onlyPlayersRollMessageString].
	self rolls add: aTTCharacter -> aValue.
	self contextManager updateInitativeRoll: aValue for: aTTCharacter.
	^ nil