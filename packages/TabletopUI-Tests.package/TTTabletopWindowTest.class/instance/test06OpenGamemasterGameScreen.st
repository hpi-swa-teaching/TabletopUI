testing
test06OpenGamemasterGameScreen
	
	self window: TTTabletopWindow new.
	self window 
		setAsGamemaster;
		openGameScreen.
	self 
		assert: self window contents size equals: 1;
		assert: (self window contents first model isKindOf: TTGamemasterGameScreen)