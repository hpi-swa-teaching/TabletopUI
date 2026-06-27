testing-money
test37GainNegativeSilver

	self characterSheet gain: -17 of: #silver.
	self assert: self characterSheet silver equals: '0'