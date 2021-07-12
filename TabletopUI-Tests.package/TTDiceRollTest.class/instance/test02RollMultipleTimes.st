testing
test02RollMultipleTimes

	self diceroll roll: 4 multipleTimes: 12.
	self assert: self diceroll rolls size equals: 12