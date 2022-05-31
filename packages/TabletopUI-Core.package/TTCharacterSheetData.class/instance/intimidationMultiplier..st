dice roll modifiers
intimidationMultiplier: aText

	self skillsLookup at: #intimidation put: ((aText asNumber min: 2) max: 0)