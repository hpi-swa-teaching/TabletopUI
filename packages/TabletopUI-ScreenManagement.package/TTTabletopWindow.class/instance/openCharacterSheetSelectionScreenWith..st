screen management
openCharacterSheetSelectionScreenWith: aDictionary
	
	| screen |
	screen := (TTCharacterSheetSelectionScreen newWith: self).
	self changeScreen: screen.
	screen characterSheets: aDictionary.
	screen changed: #nameList