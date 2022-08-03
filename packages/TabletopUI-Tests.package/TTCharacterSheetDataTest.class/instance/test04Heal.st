testing-heal-damage
test04Heal

	self characterSheet currentHP: 10.
	self characterSheet heal: 5.
	self assert: (self characterSheet currentHP = '15')
