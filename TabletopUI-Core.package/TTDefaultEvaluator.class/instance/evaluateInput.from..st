input evaluation
evaluateInput: aString from: aTTPlayer

	| output |
	
	output := self ErrorCommandNotFound.
	(aString matchesRegex: '^start fight$') ifTrue: [
		output := self startRollForInitiativeAs: aTTPlayer].
	(aString matchesRegex: '^roll ([1-9][0-9]*)?d[1-9][0-9]*([\+\-][1-9][0-9]*)?$') ifTrue: [
		output := self executeDiceRollCommand: aString].

	^ output asString