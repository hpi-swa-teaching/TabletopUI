testing-money
test36GainNegativeElectrum

	self characterSheet gainElectrum: -1.
	self assert: self characterSheet gold = 0