primitives
addAbility: aSymbol at: aPoint in: anImageMorph

	self addEditableField: aSymbol
		sized: self smallFieldExtent
		at: aPoint
		in: anImageMorph.
	self addField: (aSymbol , 'Modifier') asSymbol
		at: aPoint + (6 @ 50)
		in: anImageMorph.
