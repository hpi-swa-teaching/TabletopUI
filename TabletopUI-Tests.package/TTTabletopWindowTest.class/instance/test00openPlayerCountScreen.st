testing
test00openPlayerCountScreen

	tabletopWindow openPlayerCountScreen.
	self assert: tabletopWindow contents size = 1.
	self assert: tabletopWindow contents first model class = TTPlayerCountScreen