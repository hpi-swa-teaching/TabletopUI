testing-money
test38GainNegativeCopper

	self characterSheet gainCopper: -42069.
	self assert: self characterSheet gold = 0