screen management
abortCharacterBuilding

	self selectedPresets at: self characterIndex put: #default.
	self window openCharacterSheetSelectionScreenWith: self selectedPresets