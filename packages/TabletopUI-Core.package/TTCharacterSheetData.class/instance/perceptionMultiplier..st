dice roll modifiers
perceptionMultiplier: aText

	self skillsLookup at: #perception put: ((aText asNumber min: 2) max: 0)