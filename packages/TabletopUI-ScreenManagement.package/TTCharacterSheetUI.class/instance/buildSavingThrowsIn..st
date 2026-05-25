build
buildSavingThrowsIn: aMorph
	
	| xOffset yOffset yDistance savingThrows |
	xOffset := 20.
	yOffset := 37.
	yDistance := 23.3.
	savingThrows := TTCharacterSheetData savingThrowAbilities.
	savingThrows doWithIndex: [:savingThrow :n |
		self addSavingThrow: savingThrow at: xOffset @ (yDistance * (n - 1) + yOffset) in: aMorph].
