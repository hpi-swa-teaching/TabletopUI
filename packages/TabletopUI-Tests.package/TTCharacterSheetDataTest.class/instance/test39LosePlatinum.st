testing-money
test39LosePlatinum

	self characterSheet walletAt: #platinum put: 100.
	self characterSheet spend: 5 of: #platinum.
	self assert: self characterSheet platinum equals: '95'