testing
test04ProceedToNextPlayer

	| result |
	self assert: self context currentPlayer equals: self gm.
	self context proceedToNextPlayer: self gm.
	self assert: self context currentPlayer equals: self player.
	result := self context proceedToNextPlayer: self gm.
	self assert: self context onlyCurrentPlayerErrorString equals: result.
	