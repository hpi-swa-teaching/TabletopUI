roll for initiative
processRoll: aValue for: aTTCharacter

	(self playersWhoRolled includes: aTTCharacter) ifTrue: [
		^ self multipleRollsMessageString].
	(aTTCharacter isGamemaster) ifTrue: [
		^ self onlyPlayersRollMessageString].
	self rolls add: aTTCharacter -> aValue.
	^ nil