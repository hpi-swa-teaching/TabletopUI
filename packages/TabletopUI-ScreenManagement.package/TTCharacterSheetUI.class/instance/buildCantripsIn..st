build
buildCantripsIn: aMorph

	| xOffset yOffset yDistance |
	xOffset := 43.
	yOffset := 27.
	yDistance := 31.
	1 to: TTCharacterSheetData spellCount do: [:slot |
		self addSpellRow: 0 
			slot: slot
			extent: 300 @ 30
			at: xOffset @ (yDistance * (slot - 1) + yOffset)
			in: aMorph]