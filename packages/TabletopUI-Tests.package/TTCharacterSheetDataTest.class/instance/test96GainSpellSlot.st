testing-spellcasting
test96GainSpellSlot

	self characterSheet spellSlot1Maximum: 1.
	self characterSheet gainSpellSlot: 1.
	self assert: self characterSheet spellSlot1Current equals: '1'