testing
test02EndTurnViaChatUpdatesTurnOrderDisplay

	self playerSelection selectedIndex: 1.
	self assert: self display currentPlayerName equals: 'Alice'.
	self assert: self context currentPlayer name equals: 'Alice'.
	self inputField processInput: 'end turn'.
	self assert: self display currentPlayerName equals: 'Bob'.
	self assert: self context currentPlayer name equals: self bob name