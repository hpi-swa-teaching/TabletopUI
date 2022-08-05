testing
test04ProceedToNextPlayer

	self context proceedToNextPlayer: self gm.
	self assert: self context currentPlayer equals: self player