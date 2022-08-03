testing-money
test41LoseElectrum

	self characterSheet gold: 100.
	self characterSheet loseElectrum: 5.
	self assert: self characterSheet gold = 97.5