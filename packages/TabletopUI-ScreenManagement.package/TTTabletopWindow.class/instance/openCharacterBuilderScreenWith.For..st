screen management
openCharacterBuilderScreenWith: aDictionary For: aSmallinteger
	
	| screen |
	screen := (TTCharacterBuilderScreen newWith: self).
	self changeScreen: screen.
	screen selectedPresets: aDictionary.
	screen characterIndex: aSmallinteger
			