dice roll modifiers
perfomanceMultiplier: aText

	self skillsLookup at: #perfomance put: ((aText asNumber min: 2) max: 0)