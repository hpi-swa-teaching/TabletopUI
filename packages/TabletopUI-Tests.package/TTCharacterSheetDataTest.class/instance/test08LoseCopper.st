testing-money
test08LoseCopper

	self characterSheet gold: 100.
	self characterSheet loseCopper: 5.
	self assert: self characterSheet gold = 99.95