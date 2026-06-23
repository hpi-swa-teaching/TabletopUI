testing-spellcasting
test91SpellSlotDefaults

	1 to: 9 do: [:slot | 
		self assert: (self characterSheet spellSlotMaximumAt: slot) = 0.
		self assert: (self characterSheet spellSlotCurrentAt: slot) = 0.]