testing-spellcasting
test106SpellSlotSetters

	0 to: 9 do: [:level |
		1 to: 4 do: [:slot |
			self characterSheet perform: (('spell' , level asString , 'Slot' , slot asString , 'Equipped:') asSymbol) with: 1.
			self characterSheet perform: (('spell' , level asString , 'Slot' , slot asString , 'Name:') asSymbol) with: 'Duplication'.]].
	1 to: 9 do: [:level |
		self characterSheet perform: (('spellSlot' , level asString , 'Maximum:') asSymbol) with: 2.
		self characterSheet perform: (('spellSlot' , level asString , 'Current:') asSymbol) with: 2]