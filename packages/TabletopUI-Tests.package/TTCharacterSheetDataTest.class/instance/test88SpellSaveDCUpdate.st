testing-spellcasting
test88SpellSaveDCUpdate

	self characterSheet intelligence: 18.
	self assert: self characterSheet spellSaveDC equals:'14'