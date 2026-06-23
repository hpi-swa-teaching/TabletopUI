testing
test03EndTurnViaChatRejectsWrongPlayer

	self playerSelection selectedIndex: 2.
	self assert: self display currentPlayerName equals: 'Alice'.
	self assert: self context currentPlayer name equals: 'Alice'.
	self inputField processInput: 'end turn'.
	self assert: self context currentPlayer name equals: 'Alice'.
	self assert: self display currentPlayerName equals: 'Alice'.
	self assert: self inputField log outputs last equals: self context onlyCurrentPlayerErrorString