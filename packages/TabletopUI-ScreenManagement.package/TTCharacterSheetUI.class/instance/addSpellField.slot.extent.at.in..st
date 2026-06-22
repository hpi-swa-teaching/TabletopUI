primitives
addSpellField: aLevelNumber slot: aSlotNumber extent: anExtent at: aPoint in: anImageMorph

	| symbol |
	symbol := ('spell' , aLevelNumber asString , 'Slot' , aSlotNumber asString , 'Name') asSymbol.
	self addEditableField: symbol
		sized: anExtent
		at: aPoint
		in: anImageMorph