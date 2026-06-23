testing-spellcasting
test97GainSpellSlotClamp

	self characterSheet gainSpellSlot: 1.
	self assert: self characterSheet spellSlot1Current = '0'