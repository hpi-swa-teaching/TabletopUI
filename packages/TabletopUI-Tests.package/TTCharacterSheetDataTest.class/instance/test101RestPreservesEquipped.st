testing-spellcasting
test101RestPreservesEquipped

	self characterSheet spell1Slot1Equipped: 1.
	self characterSheet rest.
	self assert: self characterSheet spell1Slot1Equipped = 1