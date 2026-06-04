primitives
addAbility: aSymbol at: aPoint in: anImageMorph

	self addEditableField: aSymbol
		sized: 50 @ 30
		at: aPoint
		in: anImageMorph.
	self addField: (aSymbol , 'Modifier') asSymbol
		at: aPoint + (6 @ 50)
		in: anImageMorph.
