testing-spellcasting
test99SpellEquippedChange

	self characterSheet spell1Slot1Equipped: 1.
	self assert: self characterSheet spell1Slot1Equipped equals: 1