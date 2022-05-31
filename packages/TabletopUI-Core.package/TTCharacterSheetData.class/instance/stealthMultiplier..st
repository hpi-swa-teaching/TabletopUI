dice roll modifiers
stealthMultiplier: aText

	self skillsLookup at: #stealth put: ((aText asNumber min: 2) max: 0)