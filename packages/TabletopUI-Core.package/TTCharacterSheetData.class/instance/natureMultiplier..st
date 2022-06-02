dice roll modifiers
natureMultiplier: aText

	self skillsLookup at: #nature put: ((aText asNumber min: 2) max: 0)