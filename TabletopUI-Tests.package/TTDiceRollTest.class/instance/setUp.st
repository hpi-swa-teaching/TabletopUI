running
setUp

	super setUp.
	
	self diceroll: (TTDiceRoll newWithRollCount: self rollCount diceSize: self diceSize modifier: self modifier)