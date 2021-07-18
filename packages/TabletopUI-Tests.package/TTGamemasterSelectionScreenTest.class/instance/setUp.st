running
setUp
	
	self characterAdministration: TTCharacterAdministration new.
	self characterAdministration
		addPlayer: (TTCharacter newWithName: 'playerA' role: TTCharacter player);
		addPlayer: (TTCharacter newWithName: 'playerB' role: TTCharacter player).
	self screen: (TTGamemasterSelectionScreen new 
		characterAdministration: self characterAdministration)
	
	
