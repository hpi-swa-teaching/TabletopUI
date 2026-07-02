testing-money
test34GainNegativePlatinum

	self characterSheet gain: -41 of: #platinum.
	self assert: self characterSheet platinum equals: '0'