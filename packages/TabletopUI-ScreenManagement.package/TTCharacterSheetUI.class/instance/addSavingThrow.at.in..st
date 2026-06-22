primitives
addSavingThrow: aSymbol at: aPoint in: anImageMorph

	self addRegularToggle: (aSymbol , 'SavingThrowProficiency') asSymbol
		at: aPoint
		in: anImageMorph.
	self addField: (aSymbol , 'SavingThrow') asSymbol
		at: aPoint + (25 @ 0)
		in: anImageMorph.