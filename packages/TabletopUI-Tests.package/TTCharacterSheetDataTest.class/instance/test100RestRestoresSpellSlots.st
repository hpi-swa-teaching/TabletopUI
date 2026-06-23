testing-spellcasting
test100RestRestoresSpellSlots

	self characterSheet spellSlot1Maximum: 4.
	self characterSheet rest.
	self assert: self characterSheet spellSlot1Current = '4'