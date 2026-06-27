testing-money
test33GainSilver

	self characterSheet gain: 17 of: #silver.
	self assert: self characterSheet silver equals: '17'