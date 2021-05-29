text management
processInput: aText

	self changed: #resetInputField.
	
	self actionLog 
		logInput: aText asString;
		logOutput: (self inputEvaluator evaluate: aText asString fromPlayer: (self playerSelectionMenu getActivePlayer))
	