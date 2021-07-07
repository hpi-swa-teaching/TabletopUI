dice roll
executeDiceRollCommand: aString

	| diceRoll |
	
	diceRoll := self diceRollFromInput: aString.		
	(diceRoll isValid) ifFalse: [
		^ self ErrorInvalidDiceSize:  diceRoll size].
	
	^ diceRoll
	