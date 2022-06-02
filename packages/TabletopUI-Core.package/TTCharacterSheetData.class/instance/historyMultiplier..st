dice roll modifiers
historyMultiplier: aText

	self skillsLookup at: #history put: ((aText asNumber min: 2) max: 0)