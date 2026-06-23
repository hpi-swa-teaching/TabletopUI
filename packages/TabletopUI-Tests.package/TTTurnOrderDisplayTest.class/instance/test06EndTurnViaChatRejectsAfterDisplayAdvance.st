testing
test06EndTurnViaChatRejectsAfterDisplayAdvance

	self context currentPlayer: self bob.
	self assert: self display currentPlayerName equals: 'Bob'.
	self display proceedToNextPlayer.
	self assert: self context currentPlayer name equals: 'Alice'.
	self playerSelection selectedIndex: 2.
	self inputField processInput: 'end turn'.
	self assert: self context currentPlayer name equals: 'Alice'.
	self assert: self inputField log outputs last equals: self context onlyCurrentPlayerErrorString