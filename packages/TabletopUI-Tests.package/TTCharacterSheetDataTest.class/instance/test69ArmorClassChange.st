testing-combat
test69ArmorClassChange

	self characterSheet armorClass: 16.
	self assert: self characterSheet armorClass = '16'