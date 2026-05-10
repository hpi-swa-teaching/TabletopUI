primitives
addAbility: aSymbol at: aPoint in: anImageMorph

	self addField: aSymbol editable: true  at: aPoint in: anImageMorph.
	self addField: (aSymbol , 'Modifier') asSymbol editable: false at: aPoint + (6 @ 50) in: anImageMorph.
