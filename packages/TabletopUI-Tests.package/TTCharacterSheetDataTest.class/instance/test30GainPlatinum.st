testing-money
test30GainPlatinum

	self characterSheet gain: 41 of: #platinum.
	self assert: self characterSheet platinum = '41'