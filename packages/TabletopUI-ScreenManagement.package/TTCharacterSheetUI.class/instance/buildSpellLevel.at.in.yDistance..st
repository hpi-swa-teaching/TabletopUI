build
buildSpellLevel: aLevelNumber at: aPoint in: aMorph yDistance: anOffsetNumber

	| xOffset yOffset |
	xOffset := 5.
	yOffset := 30.
	self addField: ('spellSlot' , aLevelNumber asString , 'Current') asSymbol
		at: aPoint + (20 @ 5)
		in: aMorph.
	self addEditableField: ('spellSlot' , aLevelNumber asString , 'Maximum') asSymbol
		sized: 40 @ 30
		at: aPoint + (55 @ 5)
		in: aMorph.
	self addButton: ('applyGainSpellSlot' , aLevelNumber asString) asSymbol
		form: self plusButtonForm
		sized: self buttonExtent
		at: aPoint + (90 @ 10)
		in: aMorph.
	self addButton: ('applySpendSpellSlot' , aLevelNumber asString) asSymbol
		form: self minusButtonForm
		sized: self buttonExtent
		at: aPoint + (120 @ 10)
		in: aMorph.
	1 to: TTCharacterSheetData spellCount do: [:slot |
		self addSpellRow: aLevelNumber
			slot: slot
			extent: 110 @ 30
			at: aPoint + (xOffset @ (anOffsetNumber * (slot - 1) + yOffset))
			in: aMorph]