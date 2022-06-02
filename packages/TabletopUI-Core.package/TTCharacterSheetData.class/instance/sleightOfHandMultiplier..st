dice roll modifiers
sleightOfHandMultiplier: aText

	self skillsLookup at: #sleightOfHand put: ((aText asNumber min: 2) max: 0)