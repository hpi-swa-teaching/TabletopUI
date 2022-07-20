testing
test05RemovePlayer

	| result |
	self assert: self context currentPlayer equals: self gm.
	self context removePlayer: self gm name from: self gm.
	self assert: self context currentPlayer equals: self player.
	self context proceedToNextPlayer: self player.
	self assert: self context currentPlayer equals: self player.
	result := self context removePlayer: self gm name from: self player.
	self assert: self context onlyGMIsAllowedMessageString equals: result.
	