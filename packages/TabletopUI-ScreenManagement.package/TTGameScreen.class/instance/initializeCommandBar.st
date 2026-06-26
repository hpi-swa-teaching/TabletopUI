initialization
initializeCommandBar

	self 
		actionLog: (self networkFacade instantiate: TTActionLog withId: 'actionLog');
		initializePlayerDisplay;
		inputField: (TTInputField newWithActionLog: self actionLog 
			playerSelectionMenu: self playerSelectionMenu);
		addDependent: self inputField