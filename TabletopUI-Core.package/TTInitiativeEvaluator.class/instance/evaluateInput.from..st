input evaluation
evaluateInput: aString from: aTTPlayer

	(aString matchesRegex: '^finalize initiative$') ifTrue: [
		^ self endRollForInitiativeAs: aTTPlayer].
	(aString matchesRegex: '^roll d[1-9][0-9]*$') ifTrue: [
		^ self validateInitiativeRoll: aString by: aTTPlayer].

	^ self ErrorCommandNotFound