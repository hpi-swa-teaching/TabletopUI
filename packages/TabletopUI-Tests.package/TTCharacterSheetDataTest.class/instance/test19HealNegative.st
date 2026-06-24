testing-health
test19HealNegative
	
	self characterSheet heal: -1.
	self assert: (self characterSheet currentHP = '8')

