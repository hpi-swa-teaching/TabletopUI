dice roll
diceRollFromInput: aString

	^ TTDiceRoll newWithRollCount: (self extractDiceAmount: aString)
		diceSize:  (self extractDiceSize: aString) 
		modifier: (self extractModifier: aString)