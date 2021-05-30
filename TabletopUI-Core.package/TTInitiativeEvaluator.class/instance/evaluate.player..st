input evaluation
evaluate: aString player: aTTPlayer

	| result |
	
	result := self commandNotFoundError.
	(aString matchesRegex: '^end init$') ifTrue: [
		result := self endRollForInitiativeAsPlayer: aTTPlayer].
	(aString matchesRegex: '^roll d[1-9][0-9]*$') ifTrue: [
		result := self validateInitiativeRoll: aString player: aTTPlayer].

	^ result asString