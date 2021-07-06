dice roll
executeDiceRollCommand: aString

	| diceRoll |
	
	diceRoll := self diceRollFromInput: aString.		
	(diceRoll isValid) ifTrue: [
		^ diceRoll]
	ifFalse: [
		^ self ErrorInvalidDiceSize:  diceRoll size]
	