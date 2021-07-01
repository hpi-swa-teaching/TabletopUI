roll for initiative
validateInitiativeRoll: aString by: aTTPlayer

	| output |

	(self rolls keys includes: aTTPlayer) ifTrue: [
		output := self ErrorMultipleRolls]
	ifFalse: [
		(aTTPlayer isGamemaster) ifTrue: [
			output := self ErrorOnlyPlayersRoll]
		ifFalse: [
			output := self evaluateInitiativeRoll: aString by: aTTPlayer]].
	
	^ output