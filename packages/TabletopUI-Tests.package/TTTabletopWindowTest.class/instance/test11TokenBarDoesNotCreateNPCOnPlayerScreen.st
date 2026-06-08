testing
test11TokenBarDoesNotCreateNPCOnPlayerScreen

	self window: TTTabletopWindow new.
	self window
		setAsPlayer;
		openGameScreen.
	self window contents first model tokenBar
		currentName: 'orc';
		createNPC.
	self assert: self window characterAdministration npcs isEmpty