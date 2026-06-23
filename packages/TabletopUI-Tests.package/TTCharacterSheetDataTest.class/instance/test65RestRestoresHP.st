testing-health
test65RestRestoresHP

	self characterSheet currentHP: 5.
	self characterSheet rest.
	self assert: self characterSheet maxHP = self characterSheet currentHP