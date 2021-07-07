initialization
initializeCommandBar

	self actionLog: TTActionLog new;
		playerSelectionMenu: (TTPlayerSelectionMenu newWith: self characterAdministration);
		inputField: (TTInputField newWithActionLog: self actionLog playerSelectionMenu: self playerSelectionMenu)