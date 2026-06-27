testing-money
test36GainNegativeElectrum

	self characterSheet gain: -1 of: #electrum.
	self assert: self characterSheet electrum equals: '0'