testing
test02ProceedToNextPlayer

	self assert: self evaluator currentPlayer equals: self evaluator fightingPlayers first.
	self evaluator proceedToNextPlayer.
	self assert: self evaluator currentPlayer equals: self evaluator fightingPlayers second
