dice roll modifiers
insightMultiplier: aText

	self skillsLookup at: #insight put: ((aText asNumber min: 2) max: 0)