dice roll modifiers
animalHandling: aText

	self skillsLookup at: #animalHandling put: ((aText asNumber min: 2) max: 0)