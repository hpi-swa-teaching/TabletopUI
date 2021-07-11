roll for initiative
validateInitiativeRoll: aString by: aTTCharacter

	(self playersWhoRolled includes: aTTCharacter) ifTrue: [
		^ self messageMultipleRolls].
	(aTTCharacter isGamemaster) ifTrue: [
		^ self messageOnlyPlayersRoll].
	
	^ self executeDiceRollCommand: aString as: aTTCharacter