testing
test13PlayerTokenBarHidesNpcCreation

	self window: self newWindowWithMockNetwork.
	self window
		setAsPlayer;
		openGameScreen.
	self assert: ((self window contents first model tokenBar
		createPanelSpecWith: ToolBuilder default) children) isEmpty