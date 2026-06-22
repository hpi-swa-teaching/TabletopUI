testing
test01ProceedToNextPlayerButtonAdvancesCurrentPlayer

	self assert: self display currentPlayerName equals: 'Alice'.
	self assert: self context currentPlayer name equals: 'Alice'.
	self display proceedToNextPlayer.
	self assert: self display currentPlayerName equals: 'Bob'.
	self assert: self context currentPlayer name equals: 'Bob'