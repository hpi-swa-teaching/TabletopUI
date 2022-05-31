dice roll modifiers
arcanaMultiplier: aText

	self skillsLookup at: #arcana put: ((aText asNumber min: 2) max: 0)