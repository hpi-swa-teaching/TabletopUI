testing-money
test35GainNegativeGold

	self characterSheet gain: -8 of: #gold.
	self assert: self characterSheet gold equals: '0'