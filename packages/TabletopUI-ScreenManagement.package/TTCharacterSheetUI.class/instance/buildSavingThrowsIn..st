build
buildSavingThrowsIn: aMorph
	
	| xOffset yOffset yDistance savingThrows |
	xOffset := 20.
	yOffset := 37.
	yDistance := 23.3.
	savingThrows := TTCharacterSheetData abilityNames.
	savingThrows doWithIndex: [:savingThrow :index |
		self addSavingThrow: savingThrow
			at: xOffset @ (yDistance * (index - 1) + yOffset)
			in: aMorph].
