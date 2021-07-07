initialization
initializeCommandBar

	self actionLog: TTActionLog new;
		playerSelectionMenu: (TTPlayerSelectionMenu newWith: self game);
		inputField: (TTInputField newWithActionLog: self actionLog playerSelectionMenu: self playerSelectionMenu)