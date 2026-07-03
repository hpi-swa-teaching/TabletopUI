running
setUp

	self characterAdministration: TTCharacterAdministration new.
	self characterAdministration
		players: self setUpPlayers;
		playerCount: self characterAdministration players size.
	self playerSelectionMenu: (TTPlayerSelectionMenu newWith: self characterAdministration players).
	self characterAdministration playerSelectionMenu: self playerSelectionMenu.
	self toolbar: (TTToolBar new
		characterAdministration: self characterAdministration;
		inputField: TTMockInputField new;
		map: TTMap new;
		yourself)