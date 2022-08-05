testing-heal-damage
test19HealNegative
	
	self characterSheet currentHP: 10.
	self characterSheet heal: -1.
	self assert: (self characterSheet currentHP = '10')

