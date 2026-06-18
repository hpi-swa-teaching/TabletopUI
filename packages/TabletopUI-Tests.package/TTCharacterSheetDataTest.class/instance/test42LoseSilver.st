testing-money
test42LoseSilver

	self characterSheet walletAt: #silver put: 100.
	self characterSheet spend: 5 of: #silver.
	self assert: self characterSheet silver = '95'