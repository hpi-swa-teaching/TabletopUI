testing-money
test34GainNegativePlatinum

	self characterSheet gainPlatinum: -41.
	self assert: self characterSheet gold = 0