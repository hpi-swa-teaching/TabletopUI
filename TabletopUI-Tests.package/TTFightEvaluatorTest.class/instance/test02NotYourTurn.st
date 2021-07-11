testing
test02NotYourTurn

	| output player |
	
	player := self evaluator currentPlayer.
	self evaluator proceedToNextPlayer.
	output := self evaluator evaluateInput: self rolld6 from: player.
	
	self assert: output equals: 'FIGHT: ', (self evaluator messageNotYourTurn)