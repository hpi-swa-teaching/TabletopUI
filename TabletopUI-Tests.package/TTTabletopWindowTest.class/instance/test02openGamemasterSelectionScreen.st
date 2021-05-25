testing
test02openGamemasterSelectionScreen
	
	tabletopWindow game players: {TTPlayer new}.
	tabletopWindow openGamemasterSelectionScreen.
	self assert: tabletopWindow children size = 1.
	self assert: tabletopWindow children first model class = TTGamemasterSelectionScreen