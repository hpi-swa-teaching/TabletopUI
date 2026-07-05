helpers
endTurnViaChatOn: anInputField

	self useMockActionLogOn: anInputField.
	
	anInputField processInput: 'end turn'