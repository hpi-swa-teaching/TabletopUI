primitives
addSkill: aSymbol at: aPoint in: anImageMorph

	self addRegularToggle: (aSymbol , 'Proficiency') asSymbol
		at: aPoint
		in: anImageMorph.
	self addField: (aSymbol , 'Bonus') asSymbol
		at: aPoint + (21 @ -2)
		in: anImageMorph.