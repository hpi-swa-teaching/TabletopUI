dice roll modifiers
intelligenceSaveMultiplier: aText

	self throwsLookup at: #intelligenceSave put: ((aText asNumber min: 2) max: 0)