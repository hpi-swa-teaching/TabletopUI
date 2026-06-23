initialization
initializeCommandBar

	self 
		actionLog: TTActionLog new;
		initializePlayerDisplay;
		inputField: (TTInputField newWithActionLog: self actionLog 
			playerSelectionMenu: self playerSelectionMenu);

		addDependent: self inputField.
		
	self inputField parser addDependent: self window sessionManager.
	self characterAdministration playerSelectionMenu: self playerSelectionMenu.
	self flag: 'issue?'.
