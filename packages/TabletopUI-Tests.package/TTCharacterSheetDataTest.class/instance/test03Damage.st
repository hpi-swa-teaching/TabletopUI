testing
test03Damage

	self characterSheet takeDamage: 3.
	self assert: (self characterSheet currentHP = 17).
	self characterSheet takeDamage: -1.
	self assert: (self characterSheet currentHP = 17).
	self characterSheet takeDamage: 5.
	self assert: (self characterSheet currentHP = 12)

