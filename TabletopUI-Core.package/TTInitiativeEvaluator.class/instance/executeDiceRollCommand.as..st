roll for initiative
executeDiceRollCommand: aString as: aTTPlayer

	| diceRoll |
	
	diceRoll := self diceRollFromInput: aString.		
	(diceRoll isValid) ifTrue: [
		self rolls add: (aTTPlayer -> diceRoll resultValue).
		^ diceRoll]
	ifFalse: [
		^ self ErrorInvalidDiceSize:  diceRoll size]