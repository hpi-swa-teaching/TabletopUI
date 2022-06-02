dice roll modifiers
wisdomSaveMultiplier: aText

	self throwsLookup at: #wisdomSave put: ((aText asNumber min: 2) max: 0)