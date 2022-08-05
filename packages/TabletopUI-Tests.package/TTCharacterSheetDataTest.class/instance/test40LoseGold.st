testing-money
test40LoseGold

	self characterSheet gold: 100.
	self characterSheet loseGold: 5.
	self assert: self characterSheet gold = 95