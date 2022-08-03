testing-heal-damage
test18NegativeDamage

	self characterSheet takeDamage: -1.
	self assert: (self characterSheet currentHP = '20')


