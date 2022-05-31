dice roll modifiers
acrobaticsMultiplier: aText

	self skillsLookup at: #acrobatics put: ((aText asNumber min: 2) max: 0)