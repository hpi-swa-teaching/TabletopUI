dice roll modifiers
dexteritySaveMultiplier: aText

	self throwsLookup at: #dexteritySave put: ((aText asNumber min: 2) max: 0)