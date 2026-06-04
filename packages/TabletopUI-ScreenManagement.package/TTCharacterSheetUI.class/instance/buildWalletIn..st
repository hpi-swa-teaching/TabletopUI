build
buildWalletIn: aMorph

	| xOffset yOffset yDistance |
	xOffset := 20.
	yOffset := 20.
	yDistance := 20.
	TTCharacterSheetData currencies doWithIndex: [:coin :index |
		| y |
		y := yDistance * (index - 1) + yOffset.
		self addField: coin
			at: xOffset @ y
			in: aMorph.]