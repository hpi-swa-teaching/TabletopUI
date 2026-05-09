initialization
initializeCommandBar

	self 
		actionLog: TTActionLog new;
		playerSelectionMenu: (TTPlayerSelectionMenu newWith: self characterAdministration toolBar: self toolBar);
		inputField: (TTInputField newWithActionLog: self actionLog 
			playerSelectionMenu: self playerSelectionMenu);
		addDependent: self inputField