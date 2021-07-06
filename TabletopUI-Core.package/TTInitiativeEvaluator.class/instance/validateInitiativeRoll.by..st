roll for initiative
validateInitiativeRoll: aString by: aTTPlayer

	(self playersWhoRolled includes: aTTPlayer) ifTrue: [
		^ self ErrorMultipleRolls].
	(aTTPlayer isGamemaster) ifTrue: [
		^ self ErrorOnlyPlayersRoll].
	
	^ self executeDiceRollCommand: aString as: aTTPlayer