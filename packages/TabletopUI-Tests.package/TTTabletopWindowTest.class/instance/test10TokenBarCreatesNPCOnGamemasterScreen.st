testing
test10TokenBarCreatesNPCOnGamemasterScreen

	self window: TTTabletopWindow new.
	self window
		setAsGamemaster;
		openGameScreen.
	self window contents first model tokenBar
		currentName: 'orc';
		createNPC.
	self assert: self window characterAdministration npcs size equals: 1