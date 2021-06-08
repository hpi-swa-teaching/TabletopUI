testing
test03openGameScreen
	
	tabletopWindow openGameScreen.
	self assert: tabletopWindow contents size = 1.
	self assert: tabletopWindow contents first model class = TTGameScreen