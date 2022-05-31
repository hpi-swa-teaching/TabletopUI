dice roll modifiers
deceptionMultiplier: aText

	self skillsLookup at: #deception put: ((aText asNumber min: 2) max: 0)