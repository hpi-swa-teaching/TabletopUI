testing-money
test32GainElectrum

	self characterSheet gain: 1 of: #electrum.
	self assert: self characterSheet electrum equals: '1'