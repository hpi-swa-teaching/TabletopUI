testing
test00ChangeScreen

	tabletopWindow openPlayerCountScreen.
	self assert: tabletopWindow children size = 1.
	self assert: tabletopWindow children first model class = TTPlayerCountScreen.