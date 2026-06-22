primitives
addSpellToggle: aLevelNumber slot: aSlotNumber at: aPoint in: anImageMorph

	| symbol |
	symbol := ('spell' , aLevelNumber asString , 'Slot' , aSlotNumber asString , 'Equipped') asSymbol.
	self addRegularToggle: symbol
		at: aPoint
		in: anImageMorph