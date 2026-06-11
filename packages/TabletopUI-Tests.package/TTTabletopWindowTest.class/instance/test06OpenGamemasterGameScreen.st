testing
test06OpenGamemasterGameScreen
	
	self window: self newWindowWithMockNetwork.
	self window 
		setAsGamemaster;
		openGameScreen.
	self 
		assert: self window contents size equals: 1;
		assert: self window contents first model class equals: TTGamemasterGameScreen