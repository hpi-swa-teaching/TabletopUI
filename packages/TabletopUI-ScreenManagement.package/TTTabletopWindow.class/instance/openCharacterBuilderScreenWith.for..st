screen management
openCharacterBuilderScreenWith: aDictionary for: aSmallInteger
	
	| screen |
	screen := (TTCharacterBuilderScreen newWith: self).
	self changeScreen: screen.
	screen selectedPresets: aDictionary.
	screen characterIndex: aSmallInteger
			