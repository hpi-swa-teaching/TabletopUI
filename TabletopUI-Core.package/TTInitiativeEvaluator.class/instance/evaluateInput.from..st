input evaluation
evaluateInput: aString from: aTTCharacter

	(aString matchesRegex: self endRollForInitiativePattern) ifTrue: [
		^ self executeFinalizationCommandAs: aTTCharacter].
	(aString matchesRegex: self diceRollPattern) ifTrue: [
		^ self validateInitiativeRoll: aString by: aTTCharacter].

	^ self ErrorCommandNotFound