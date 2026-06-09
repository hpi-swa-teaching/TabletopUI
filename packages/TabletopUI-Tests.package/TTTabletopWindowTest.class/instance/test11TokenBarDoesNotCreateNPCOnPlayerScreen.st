testing
test11TokenBarDoesNotCreateNPCOnPlayerScreen

	self window: self newMockWindow.
	self window
		setAsPlayer;
		openGameScreen.
	self window contents first model tokenBar
		currentName: 'orc';
		createNPC.
	self assert: self window characterAdministration npcs isEmpty