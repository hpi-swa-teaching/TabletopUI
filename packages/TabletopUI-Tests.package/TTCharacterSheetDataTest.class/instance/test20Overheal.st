testing-heal-damage
test20Overheal

	self characterSheet heal: 10.
	self assert: (self characterSheet currentHP = '20')

