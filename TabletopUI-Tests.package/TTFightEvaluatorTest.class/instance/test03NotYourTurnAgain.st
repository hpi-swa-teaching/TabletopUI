testing
test03NotYourTurnAgain

	| output player |
	
	player := self evaluator fightingPlayers after: self evaluator currentPlayer ifAbsent: [
		self evaluator fightingPlayers first].
	output := self evaluator evaluateInput: self rolld6 from: player.
	
	self assert: output equals: 'FIGHT: ', (self evaluator messageNotYourTurn)