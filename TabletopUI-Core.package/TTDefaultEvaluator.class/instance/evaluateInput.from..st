input evaluation
evaluateInput: aString from: aTTPlayer

	(aString matchesRegex: self startFightPattern) ifTrue: [
		^ self executeFightCommandAs: aTTPlayer].
	(aString matchesRegex: self diceRollPattern) ifTrue: [
		^ self executeDiceRollCommand: aString].

	^ self ErrorCommandNotFound