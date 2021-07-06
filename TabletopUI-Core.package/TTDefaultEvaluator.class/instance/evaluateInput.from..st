input evaluation
evaluateInput: aString from: aTTPlayer

	(aString matchesRegex: self startFightPattern) ifTrue: [
		^ self startRollForInitiativeAs: aTTPlayer].
	(aString matchesRegex: self diceRollPattern) ifTrue: [
		^ self executeDiceRollCommand: aString].

	^ self ErrorCommandNotFound