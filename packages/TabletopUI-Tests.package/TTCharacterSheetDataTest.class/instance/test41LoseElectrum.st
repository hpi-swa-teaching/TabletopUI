testing-money
test41LoseElectrum

	self characterSheet walletAt: #electrum put: 100.
	self characterSheet spend: 5 of: #electrum.
	self assert: self characterSheet electrum = '95'