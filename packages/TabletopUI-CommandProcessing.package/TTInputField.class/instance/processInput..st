text management
processInput: aText
	
	| activePlayer |
	
	self changed: #resetInputField.
	activePlayer := self playerSelection getActivePlayer.
	
	self log 
		logInput: activePlayer name , ': ', aText asString;
		logOutput: (self parser evaluateInput: aText asString from: activePlayer)
	