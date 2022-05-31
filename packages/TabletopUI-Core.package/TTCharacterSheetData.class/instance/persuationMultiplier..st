dice roll modifiers
persuationMultiplier: aText

	self skillsLookup at: #persuation put: ((aText asNumber min: 2) max: 0)