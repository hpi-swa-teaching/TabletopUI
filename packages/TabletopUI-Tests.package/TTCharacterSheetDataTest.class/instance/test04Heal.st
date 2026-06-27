testing-health
test04Heal

	self characterSheet currentHP: 3.
	self characterSheet heal: 5.
	self assert: self characterSheet currentHP equals: '8'
