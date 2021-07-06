input evaluation
evaluateInput: aString from: aTTPlayer

	(aString matchesRegex: self diceRollPattern) ifTrue: [
		^ self executeDiceRollCommand: aString asPlayer: aTTPlayer].
	(aString matchesRegex: self endFightPattern) ifTrue: [
		^ self endFightingAs: aTTPlayer].
	(aString matchesRegex: self removeCharacterPattern) ifTrue: [
		^ self executeRemoveCommand: aString asPlayer: aTTPlayer].
	
	 ^ self ErrorCommandNotFound