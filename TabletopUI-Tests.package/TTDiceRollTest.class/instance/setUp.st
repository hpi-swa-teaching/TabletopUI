running
setUp

	super setUp.
	
	self diceroll: (TTDiceRoll newWithRollCount: 3 diceSize: 6 modifier: 4)