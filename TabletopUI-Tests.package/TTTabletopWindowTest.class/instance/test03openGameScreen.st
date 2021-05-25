testing
test03openGameScreen
	
	tabletopWindow openGameScreen.
	self assert: tabletopWindow children size = 1.
	self assert: tabletopWindow children first model class = TTGameScreen