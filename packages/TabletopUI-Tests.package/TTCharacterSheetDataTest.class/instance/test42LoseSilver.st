testing-money
test42LoseSilver

	self characterSheet gold: 100.
	self characterSheet loseSilver: 5.
	self assert: self characterSheet gold = 99.5