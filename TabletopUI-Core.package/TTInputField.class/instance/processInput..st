text management
processInput: aText

	self changed: #resetInputField.
	
	self window actionLog 
		logInput: aText asString;
		logOutput: (self evaluate: aText asString)
	