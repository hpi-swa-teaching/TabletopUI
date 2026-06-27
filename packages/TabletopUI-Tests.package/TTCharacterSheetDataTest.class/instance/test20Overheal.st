testing-health
test20Overheal

	self characterSheet 
		currentHP: 1;
		heal: 5.
	self assert: self characterSheet currentHP equals: '6'

