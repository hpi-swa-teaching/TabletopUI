input evaluation
evaluate: aString player: aTTPlayer

	| output |
	
	output := self commandNotFoundError.
	(aString matchesRegex: '^init$') ifTrue: [
		output := self startRollForInitiativeAsPlayer: aTTPlayer].
	(aString matchesRegex: '^roll ([1-9][0-9]*)?d[1-9][0-9]*([\+\-][1-9][0-9]*)?$') ifTrue: [
		output := self evaluateRollDiceCommand: aString].

	^ output asString