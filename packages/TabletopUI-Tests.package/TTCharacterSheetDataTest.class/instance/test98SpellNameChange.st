testing-spellcasting
test98SpellNameChange

	self characterSheet spell1Slot1Name: 'Mouse of Doom'.
	self assert: self characterSheet spell1Slot1Name = 'Mouse of Doom'