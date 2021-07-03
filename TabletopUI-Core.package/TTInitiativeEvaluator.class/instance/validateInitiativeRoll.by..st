roll for initiative
validateInitiativeRoll: aString by: aTTPlayer

	(self playersWhoRolled includes: aTTPlayer) ifTrue: [
		^ self ErrorMultipleRolls]
	ifFalse: [
		(aTTPlayer isGamemaster) ifTrue: [
			^ self ErrorOnlyPlayersRoll]
		ifFalse: [
			^ self evaluateInitiativeRoll: aString by: aTTPlayer]]