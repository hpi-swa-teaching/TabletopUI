testing
test08RemoveCurrentPlayer

	| nextPlayer |

	self assert: self evaluator currentPlayer equals: self evaluator fightingPlayers first.
	nextPlayer := self evaluator fightingPlayers second.
	self evaluator removePlayer: self evaluator currentPlayer.
	self assert: self evaluator currentPlayer equals: nextPlayer