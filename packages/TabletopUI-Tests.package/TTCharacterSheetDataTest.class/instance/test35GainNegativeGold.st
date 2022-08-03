testing-money
test35GainNegativeGold

	self characterSheet gainGold: -8.
	self assert: self characterSheet gold = 0