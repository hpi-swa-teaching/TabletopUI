dice roll modifiers
charismaSaveMultiplier: aText

	self throwsLookup at: #charismaSave put: ((aText asNumber min: 2) max: 0)