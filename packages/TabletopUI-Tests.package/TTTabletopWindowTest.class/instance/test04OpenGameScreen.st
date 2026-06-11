testing
test04OpenGameScreen
	
	self window openGameScreen.
	self 
		assert: self window contents size equals: 1;
		assert: (self window contents first model isKindOf: TTGameScreen)