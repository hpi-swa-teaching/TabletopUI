helpers
endTurnViaChatOn: anInputField

	| currentName |
	self useMockActionLogOn: anInputField.
	currentName := (self fightContextOf: anInputField) currentPlayer.
	anInputField processInput: 'end turn'