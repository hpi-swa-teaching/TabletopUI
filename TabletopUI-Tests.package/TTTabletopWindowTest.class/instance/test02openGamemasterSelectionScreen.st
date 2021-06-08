testing
test02openGamemasterSelectionScreen
	
	tabletopWindow game players: {TTPlayer new}.
	tabletopWindow openGamemasterSelectionScreen.
	self assert: tabletopWindow contents size = 1.
	self assert: tabletopWindow contents first model class = TTGamemasterSelectionScreen