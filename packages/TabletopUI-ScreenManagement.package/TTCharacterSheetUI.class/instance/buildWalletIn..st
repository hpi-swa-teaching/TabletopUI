build
buildWalletIn: aMorph

	| xOffset yOffset yDistance |
	xOffset := 70.
	yOffset := 110.
	yDistance := 35.
	TTCharacterSheetData currencies doWithIndex: [:coin :index |
		| y |
		y := yDistance * (index - 1) + yOffset.
		self addField: coin
			at: xOffset @ y
			in: aMorph.
		self addButton: ('applySpend' , coin capitalized) asSymbol
			form: self minusButtonForm
			sized: self buttonExtent
			at: (xOffset + 50) @ y
			in: aMorph.
		self addButton: ('applyGain' , coin capitalized) asSymbol
			form: self plusButtonForm
			sized: self buttonExtent
			at: (xOffset + 80) @ y
			in: aMorph]