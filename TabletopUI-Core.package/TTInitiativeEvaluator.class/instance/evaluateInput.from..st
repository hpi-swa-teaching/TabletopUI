input evaluation
evaluateInput: aString from: aTTPlayer

	(aString matchesRegex: self endRollForInitiativePattern) ifTrue: [
		^ self executeFinalizationCommandAs: aTTPlayer].
	(aString matchesRegex: self diceRollPattern) ifTrue: [
		^ self validateInitiativeRoll: aString by: aTTPlayer].

	^ self ErrorCommandNotFound