testing
test01openPlayerNamesScreen
	
	tabletopWindow game playerCount: 1.
	tabletopWindow openPlayerNamesScreen.
	self assert: tabletopWindow contents size = 1.
	self assert: tabletopWindow contents first model class = TTPlayerNamesScreen