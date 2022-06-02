dice roll modifiers
survivalMultiplier: aText

	self skillsLookup at: #survival put: ((aText asNumber min: 2) max: 0)