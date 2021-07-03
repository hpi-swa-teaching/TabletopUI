input evaluation
evaluateInput: aString from: aTTPlayer

	(aString matchesRegex: '^start fight$') ifTrue: [
		^ self startRollForInitiativeAs: aTTPlayer].
	(aString matchesRegex: '^roll ([1-9][0-9]*)?d[1-9][0-9]*([\+\-][1-9][0-9]*)?$') ifTrue: [
		^ self executeDiceRollCommand: aString].

	^ self ErrorCommandNotFound