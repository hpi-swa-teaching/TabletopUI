dice roll modifiers
investigationMultiplier: aText

	self skillsLookup at: #investigation put: ((aText asNumber min: 2) max: 0)