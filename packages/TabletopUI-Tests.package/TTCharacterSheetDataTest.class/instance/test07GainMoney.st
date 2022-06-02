testing
test07GainMoney

	self assert: (self characterSheet gold = 0).
	self characterSheet gainPlatinum: 41.
	self assert: (self characterSheet gold = 410).
	self characterSheet gainGold: 8.
	self assert: (self characterSheet gold = 418).
	self characterSheet gainElectrum: 1.
	self assert: (self characterSheet gold = 418.5).
	self characterSheet gainSilver: 7.
	self assert: (self characterSheet gold = 419.2).
	self characterSheet gainCopper: 149.
	self assert: (self characterSheet gold = 420.69).
	self characterSheet gainGold: -1.
	self assert: (self characterSheet gold = 420.69)