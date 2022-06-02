dice roll modifiers
strengthSaveMultiplier: aText

	self throwsLookup at: #strengthSave put: ((aText asNumber min: 2) max: 0)