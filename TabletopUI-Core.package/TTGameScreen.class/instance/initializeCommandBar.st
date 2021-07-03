initialization
initializeCommandBar

	self actionLog: TTActionLog new;
		playerSelectionMenu: (TTPlayerSelectionMenu newWithGame: self game);
		inputField: (TTInputField newWithActionLog: self actionLog playerSelectionMenu: self playerSelectionMenu)