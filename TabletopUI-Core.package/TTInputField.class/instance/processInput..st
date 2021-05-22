text management
processInput: aText

	self changed: #resetInputField.
	
	self window actionLog 
		logInput: aText asString;
		logOutput: (self inputEvaluator evaluate: aText asString)
	