initialization
initializeCommandBar

	self
		actionLog: (self networkFacade instantiate: TTActionLog withId: 'actionLog');
		initializePlayerDisplay;
		inputField: ((self networkFacade instantiate: TTInputField withId: 'inputField')
			log: self actionLog;
			playerSelection: self playerSelectionMenu);
		addDependent: self inputField