actions
selectDice: aDice

	self diceAmounts at: aDice put: (self diceAmounts at: aDice) + 1.
	self changed: (aDice, 'Changed') asSymbol