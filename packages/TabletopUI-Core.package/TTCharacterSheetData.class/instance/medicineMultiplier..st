dice roll modifiers
medicineMultiplier: aText

	self skillsLookup at: #medicine put: ((aText asNumber min: 2) max: 0)