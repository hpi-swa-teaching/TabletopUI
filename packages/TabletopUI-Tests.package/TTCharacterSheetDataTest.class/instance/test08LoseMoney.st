testing
test08LoseMoney

	self characterSheet gainGold: 841.38.
	self characterSheet losePlatinum: 41.
	self assert: (self characterSheet gold = 431.38).
	self characterSheet loseGold: 8.
	self assert: (self characterSheet gold = 423.38).
	self characterSheet loseElectrum: 1.
	self assert: (self characterSheet gold = 422.88).
	self characterSheet loseSilver: 7.
	self assert: (self characterSheet gold = 422.18).
	self characterSheet loseCopper: 149.
	self assert: (self characterSheet gold = 420.69).
	self characterSheet loseGold: -1.
	self assert: (self characterSheet gold = 420.69)