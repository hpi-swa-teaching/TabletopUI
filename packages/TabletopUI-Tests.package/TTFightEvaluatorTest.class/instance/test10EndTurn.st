testing
test10EndTurn

	| output player |
	
	player := self players first.
	output := self evaluator evaluateInput: 'end turn' from: player.
	self assert: output equals: 'FIGHT: Next up is ', self players second name.
	
	output := self evaluator evaluateInput: 'end turn' from: player.
	self assert: output equals: self evaluator messageNotYourTurn