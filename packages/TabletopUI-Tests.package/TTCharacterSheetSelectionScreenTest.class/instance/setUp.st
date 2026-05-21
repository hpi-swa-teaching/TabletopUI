running
setUp

	self screen: TTCharacterSheetSelectionScreen new.
	self window: TTTabletopWindow new.
	self screen window: self window.
	self characterAdministration: self window characterAdministration.
	self characterAdministration
		playerCount: 2;
		addPlayer: (TTCharacter newWithName: 'playerA' role: TTCharacter player);
		addPlayer: (TTCharacter newWithName: 'playerB' role: TTCharacter gamemaster).
	self screen characterAdministration: self characterAdministration.
	