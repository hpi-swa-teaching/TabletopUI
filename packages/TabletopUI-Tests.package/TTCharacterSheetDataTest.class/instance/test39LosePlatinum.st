testing-money
test39LosePlatinum

	self characterSheet gold: 100.
	self characterSheet losePlatinum: 5.
	self assert: self characterSheet gold = 50