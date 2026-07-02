testing-spellcasting
test94SpendSpellSlot

	self characterSheet spellSlot1Maximum: 4.
	self characterSheet spellSlot1Current: 4.
	self characterSheet spendSpellSlot: 1.
	self assert: self characterSheet spellSlot1Current equals: '3'