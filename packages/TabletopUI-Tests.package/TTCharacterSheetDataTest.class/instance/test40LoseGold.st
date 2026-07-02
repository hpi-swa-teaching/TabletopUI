testing-money
test40LoseGold

	self characterSheet walletAt: #gold put: 100.
	self characterSheet spend: 5 of: #gold.
	self assert: self characterSheet gold equals: '95'