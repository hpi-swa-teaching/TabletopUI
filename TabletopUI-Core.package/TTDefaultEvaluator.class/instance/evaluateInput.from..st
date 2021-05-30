input evaluation
evaluateInput: aString from: aTTPlayer

	| output |
	
	output := self ErrorCommandNotFound.
	(aString matchesRegex: '^init$') ifTrue: [
		output := self startRollForInitiativeAs: aTTPlayer].
	(aString matchesRegex: '^roll ([1-9][0-9]*)?d[1-9][0-9]*([\+\-][1-9][0-9]*)?$') ifTrue: [
		output := self checkDiceRollCommand: aString].

	^ output asString