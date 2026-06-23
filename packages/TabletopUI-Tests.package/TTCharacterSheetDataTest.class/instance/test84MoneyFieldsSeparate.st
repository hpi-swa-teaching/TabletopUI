testing-money
test84MoneyFieldsSeparate

	self characterSheet walletAt: #gold put: 40.
	self characterSheet walletAt: #silver put: 50.
	self assert: self characterSheet gold = '40'.
	self assert: self characterSheet silver = '50'.