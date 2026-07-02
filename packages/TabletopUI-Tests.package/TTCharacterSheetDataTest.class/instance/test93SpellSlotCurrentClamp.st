testing-spellcasting
test93SpellSlotCurrentClamp

	self characterSheet spellSlot1Maximum: 4.
	self characterSheet spellSlot1Current: 10.
	self assert: self characterSheet spellSlot1Current equals: '4'.
	self characterSheet spellSlot1Current: -3.
	self assert: self characterSheet spellSlot1Current equals: '0'