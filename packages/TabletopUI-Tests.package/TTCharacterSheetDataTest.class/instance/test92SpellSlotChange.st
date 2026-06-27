testing-spellcasting
test92SpellSlotChange

	self characterSheet spellSlot1Maximum: 4.
	self assert: self characterSheet spellSlot1Maximum equals: '4'