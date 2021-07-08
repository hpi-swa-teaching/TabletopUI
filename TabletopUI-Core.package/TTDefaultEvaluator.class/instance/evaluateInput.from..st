input evaluation
evaluateInput: aString from: aTTCharacter

	(aString matchesRegex: self startFightPattern) ifTrue: [
		^ self executeFightCommandAs: aTTCharacter].
	(aString matchesRegex: self diceRollPattern) ifTrue: [
		^ self executeDiceRollCommand: aString].

	^ self ErrorCommandNotFound