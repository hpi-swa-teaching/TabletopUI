testing
test08GamemasterGameScreenCreatesNPC

	| screen npc networkmanager |
	networkmanager:= self window networkFacade networkmanager.
	npc := TTCharacter newWithName: 'orc' role: TTCharacter npc.
	self window
		setAsGamemaster;
		openGameScreen.
	screen := self window gamescreen.
	screen createNPC: npc.
	self 
		assert: (networkmanager lastMessage = 'receiveCreateNPCUpdate:');
		assert: (networkmanager lastRecipient = 'gamescreen').
	screen receiveCreateNPCUpdate: networkmanager lastParameters.
	self assert: self window characterAdministration npcs size equals: 1