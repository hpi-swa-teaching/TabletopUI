input evaluation
evaluateInput: aString from: aTTPlayer

	| result |
	
	result := self ErrorCommandNotFound.
	(aString matchesRegex: '^end init$') ifTrue: [
		result := self endRollForInitiativeAs: aTTPlayer].
	(aString matchesRegex: '^roll d[1-9][0-9]*$') ifTrue: [
		result := self validateInitiativeRoll: aString by: aTTPlayer].

	^ result asString