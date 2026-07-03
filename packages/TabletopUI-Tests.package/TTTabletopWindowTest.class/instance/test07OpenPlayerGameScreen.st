testing
test07OpenPlayerGameScreen
	
	self window 
		setAsPlayer;
		openGameScreen.
	self 
		assert: self window contents size equals: 1;
		assert: self window contents first model class equals: TTPlayerGameScreen