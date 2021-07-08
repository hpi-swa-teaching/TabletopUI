roll for initiative
validateInitiativeRoll: aString by: aTTCharacter

	(self playersWhoRolled includes: aTTCharacter) ifTrue: [
		^ self ErrorMultipleRolls].
	(aTTCharacter isGamemaster) ifTrue: [
		^ self ErrorOnlyPlayersRoll].
	
	^ self executeDiceRollCommand: aString as: aTTCharacter