testing-combat
test69ArmorClassChange

	self characterSheet dexterity: 12.
	self assert: self characterSheet armorClass = '11'