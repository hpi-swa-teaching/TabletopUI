testing-spellcasting
test95SpendSpellSlotClamp

	self characterSheet spendSpellSlot: 1.
	self assert: self characterSheet spellSlot1Current equals: '0'