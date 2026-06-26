initialization
initializeCommandBar

	self 
		actionLog: (self networkFacade instantiate: TTActionLog withId: 'actionLog');
		playerSelectionMenu: (TTPlayerSelectionMenu newWith: self characterAdministration);
		inputField: (TTInputField newWithActionLog: self actionLog 
			playerSelectionMenu: self playerSelectionMenu);
		addDependent: self inputField