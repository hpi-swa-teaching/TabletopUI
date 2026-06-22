build
buildAbilitiesIn: aMorph

	| xOffset yOffset yDistance |
	xOffset := 75.
	yOffset := 45.
	yDistance := 143.
	TTCharacterSheetData abilityNames doWithIndex: [:ability :index |
		self addAbility: ability
			at: xOffset @ (yDistance * (index - 1) + yOffset)
			in: aMorph]