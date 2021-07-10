as yet unclassified
setUp
	
	self characterAdministration: TTCharacterAdministration new.
	self characterAdministration
		addPlayer: (TTCharacter newWithName: 'playerA' role: TTCharacter player);
		addPlayer: (TTCharacter newWithName: 'playerB' role: TTCharacter player).
	self screen: TTGamemasterSelectionScreen new.
	self screen characterAdministration: self characterAdministration
	
	
