testing
test10TokenBarCreatesNPCOnGamemasterScreen


	| networkmanager screen |
	networkmanager:= self window networkFacade networkmanager.
	
	self window
		setAsGamemaster;
		openGameScreen.
	screen:= self window gamescreen.
	screen tokenBar
		currentName: 'orc';
		createNPC.
		
	self 
		assert: (networkmanager lastMessage = 'receiveCreateNPCUpdate:');
		assert: (networkmanager lastRecipient = 'gamescreen').
		
	screen receiveCreateNPCUpdate: networkmanager lastParameters.
		
	
	self assert: self window characterAdministration npcs size equals: 1