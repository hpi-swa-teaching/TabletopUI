testing
test07OpenPlayerGameScreen
	
	self window: TTTabletopWindow new.
	self window 
		setAsPlayer;
		openGameScreen.
	self 
		assert: self window contents size equals: 1;
		assert: (self window contents first model isKindOf: TTPlayerGameScreen)