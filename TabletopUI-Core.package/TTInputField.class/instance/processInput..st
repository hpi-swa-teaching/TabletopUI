text management
processInput: aText
	
	| activePlayer |
	
	self changed: #resetInputField.
	activePlayer := self playerSelectionMenu getActivePlayer.
	
	self actionLog 
		logInput: activePlayer name , ': ', aText asString;
		logOutput: (self inputEvaluator evaluateInput: aText asString from: activePlayer)
	