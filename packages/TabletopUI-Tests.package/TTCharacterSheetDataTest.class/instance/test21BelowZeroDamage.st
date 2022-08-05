testing-heal-damage
test21BelowZeroDamage

	self characterSheet takeDamage: 25.
	self assert: (self characterSheet currentHP = '0')

