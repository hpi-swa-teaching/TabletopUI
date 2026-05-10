primitives
addSkill: aSymbol at: aPoint in: anImageMorph

	Transcript show: 'placeholder boolean'.
	self addRegularToggle: #inspiration at: aPoint in: anImageMorph.
	self addField: aSymbol editable: false at: aPoint + (25 @ 0) in: anImageMorph.