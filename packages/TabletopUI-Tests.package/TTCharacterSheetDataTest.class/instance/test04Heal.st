testing
test04Heal

	self characterSheet heal: 10.
	self assert: (self characterSheet currentHP = 20).
	self characterSheet takeDamage: 15.
	self characterSheet heal: 5.
	self assert: (self characterSheet currentHP = 10).
	self characterSheet heal: -1.
	self assert: (self characterSheet currentHP = 10)

