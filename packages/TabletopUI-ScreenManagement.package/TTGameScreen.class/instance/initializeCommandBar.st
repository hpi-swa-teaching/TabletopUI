initialization
initializeCommandBar

	self
		actionLog: (self networkFacade instantiate: TTActionLog withId: 'actionLog');
		inputField: (self networkFacade instantiate: TTInputField withId: 'inputField');
		initializePlayerDisplay;
		updateInputField;
		addDependent: self inputField.
	self inputField contextManager addDependent: self
		