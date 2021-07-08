input evaluation
evaluateInput: aString from: aTTCharacter

	(aString matchesRegex: self diceRollPattern) ifTrue: [
		^ self executeDiceRollCommand: aString as: aTTCharacter].
	(aString matchesRegex: self endFightPattern) ifTrue: [
		^ self endFightingAs: aTTCharacter].
	(aString matchesRegex: self removeCharacterPattern) ifTrue: [
		^ self executeRemoveCommand: aString as: aTTCharacter].
	
	 ^ self ErrorCommandNotFound