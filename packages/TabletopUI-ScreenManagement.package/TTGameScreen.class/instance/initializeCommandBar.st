initialization
initializeCommandBar

	self 
		actionLog: TTActionLog new;
		playerSelectionMenu: (TTPlayerSelectionMenu newWith: self charactersToDisplay);
		inputField: (TTInputField newWithActionLog: self actionLog 
			playerSelectionMenu: self playerSelectionMenu);
		addDependent: self inputField.
	self characterAdministration playerSelectionMenu: self playerSelectionMenu.