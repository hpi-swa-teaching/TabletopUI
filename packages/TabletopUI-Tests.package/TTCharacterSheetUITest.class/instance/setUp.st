running
setUp

	self openedDisplays: OrderedCollection new.
	self characterAdministration: TTCharacterAdministration new.
	self characterAdministration 
		players: self setUpPlayers;
		playerCount: self characterAdministration players size.
	self playerSelectionMenu: self characterAdministration playerSelectionMenu.
	self toolbar: (TTToolBar newWith: self characterAdministration and: TTMockInputField new map: TTMap new)