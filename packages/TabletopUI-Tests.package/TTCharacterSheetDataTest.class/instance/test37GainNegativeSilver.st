testing-money
test37GainNegativeSilver

	self characterSheet gainSilver: -17.
	self assert: self characterSheet gold = 0