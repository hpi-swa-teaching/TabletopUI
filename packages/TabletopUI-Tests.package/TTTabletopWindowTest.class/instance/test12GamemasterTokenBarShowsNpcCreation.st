testing
test12GamemasterTokenBarShowsNpcCreation

	self window: TTTabletopWindow new.
	self window
		setAsGamemaster;
		openGameScreen.
	self assert: ((self window contents first model tokenBar
		createPanelSpecWith: ToolBuilder default) children) notEmpty