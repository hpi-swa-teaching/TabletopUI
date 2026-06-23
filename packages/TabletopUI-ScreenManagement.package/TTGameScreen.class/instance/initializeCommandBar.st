initialization
initializeCommandBar

	self 
		actionLog: TTActionLog new;
		initializePlayerDisplay;
		inputField: (TTInputField newWithActionLog: self actionLog 
			playerSelectionMenu: self playerSelectionMenu);
		addDependent: self inputField.
	self characterAdministration playerSelectionMenu: self playerSelectionMenu.