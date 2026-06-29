testing
test03Damage

	self characterSheet takeDamage: 3.
	self assert: (self characterSheet currentHP = '17')

