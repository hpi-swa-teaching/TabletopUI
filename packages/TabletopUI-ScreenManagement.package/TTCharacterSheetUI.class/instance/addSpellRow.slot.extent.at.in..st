primitives
addSpellRow: aLevelNumber slot: aSlotNumber extent: anExtent at: aPoint in: aMorph

	self addSpellField: aLevelNumber
		slot: aSlotNumber
		extent: anExtent
		at: aPoint + (30 @ 0)
		in: aMorph.
	self addSpellToggle: aLevelNumber
		slot: aSlotNumber
		at: aPoint
		in: aMorph