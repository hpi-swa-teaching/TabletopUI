accessing
setUp

	self characterAdministration: TTCharacterAdministration new.
	self playerSelectionMenu: (TTPlayerSelectionMenu newWith: self characterAdministration).
	self characterAdministration 
		players: self setUpPlayers;
		playerCount: self characterAdministration players size;
		playerSelectionMenu: self playerSelectionMenu.
	self toolbar: (TTToolBar newWith: self characterAdministration).