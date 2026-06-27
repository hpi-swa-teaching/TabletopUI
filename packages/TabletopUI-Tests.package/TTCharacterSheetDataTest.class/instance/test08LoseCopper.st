testing-money
test08LoseCopper

	self characterSheet walletAt: #copper put: 100.
	self characterSheet spend: 5 of: #copper.
	self assert: self characterSheet copper equals: '95'