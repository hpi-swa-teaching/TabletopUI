dice roll modifiers
performanceMultiplier: aText

	self skillsLookup at: #performance put: ((aText asNumber min: 2) max: 0)