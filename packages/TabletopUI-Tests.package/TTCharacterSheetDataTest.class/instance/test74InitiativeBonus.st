testing-combat
test74InitiativeBonus

	self characterSheet initiativeBonus: 5.
	self assert: self characterSheet initiative = '5'