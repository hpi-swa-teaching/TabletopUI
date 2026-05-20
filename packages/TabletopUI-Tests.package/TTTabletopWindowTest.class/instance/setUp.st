running
setUp

	self window: TTTabletopWindow new.
	self window characterAdministration
		playerCount: 1;
		addPlayer: (TTCharacter newWithName: 'a' role: TTCharacter player).