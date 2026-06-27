testing-health
test21BelowZeroDamage

	self characterSheet takeDamage: 25.
	self assert: self characterSheet currentHP equals: '0'

