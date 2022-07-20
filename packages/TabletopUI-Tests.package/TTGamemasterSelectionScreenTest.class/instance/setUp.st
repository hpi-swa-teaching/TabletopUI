running
setUp
	
	self screen: TTGamemasterSelectionScreen new.
	self window: TTTabletopWindow new.
	self screen window: self window.
	self screen characterAdministration: self window characterAdministration.
	self screen characterAdministration
		addPlayer: (TTCharacter newWithName: 'playerA' role: TTCharacter player);
		addPlayer: (TTCharacter newWithName: 'playerB' role: TTCharacter player).
	self characterAdministration: self window characterAdministration
	
