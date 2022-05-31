dice roll modifiers
constitutionSaveMultiplier: aText

	self throwsLookup at: #constitutionSave put: ((aText asNumber min: 2) max: 0)