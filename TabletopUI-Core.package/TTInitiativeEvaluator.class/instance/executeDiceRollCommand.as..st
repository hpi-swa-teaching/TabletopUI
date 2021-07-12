roll for initiative
executeDiceRollCommand: aString as: aTTCharacter

	| diceRoll |
	
	diceRoll := self diceRollFromInput: aString.		
	(diceRoll isValid) ifTrue: [
		self rolls add: (aTTCharacter -> diceRoll resultValue).
		^ diceRoll asString]
	ifFalse: [
		^ self messageInvalidDiceSize:  diceRoll size]