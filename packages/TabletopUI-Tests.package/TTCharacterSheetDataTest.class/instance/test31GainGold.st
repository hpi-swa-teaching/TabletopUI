testing-money
test31GainGold

	self characterSheet gain: 8 of: #gold.
	self assert: self characterSheet gold equals: '8'