testing-combat
test69ArmorClassChange

	self characterSheet dexterity: 12.
	self assert: self characterSheet armorClass equals: '11'