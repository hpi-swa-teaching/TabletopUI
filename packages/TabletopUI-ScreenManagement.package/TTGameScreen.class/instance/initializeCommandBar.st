initialization
initializeCommandBar

	self 
		actionLog: TTActionLog new;
		playerSelectionMenu: self characterAdministration playerSelectionMenu;
		inputField: (TTInputField newWithActionLog: self actionLog 
			playerSelectionMenu: self playerSelectionMenu);
		addDependent: self inputField