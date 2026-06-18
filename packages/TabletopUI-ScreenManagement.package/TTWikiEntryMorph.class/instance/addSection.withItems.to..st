initialization
addSection: aLabelTitle withItems: aCollection to: aContainer

	aContainer addMorphBack: (self styledLabel: aLabelTitle).
	aCollection do: [:each | self addText: each to: aContainer]