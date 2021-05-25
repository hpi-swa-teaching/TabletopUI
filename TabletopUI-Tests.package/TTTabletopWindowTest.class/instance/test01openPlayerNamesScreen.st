testing
test01openPlayerNamesScreen
	
	tabletopWindow game playerCount: 1.
	tabletopWindow openPlayerNamesScreen.
	self assert: tabletopWindow children size = 1.
	self assert: tabletopWindow children first model class = TTPlayerNamesScreen