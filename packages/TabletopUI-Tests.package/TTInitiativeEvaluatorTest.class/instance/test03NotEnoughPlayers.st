testing
test03NotEnoughPlayers

	| output |
	
	self evaluator evaluateInput: self rolld6 from: self players first.
	output := self evaluator evaluateInput: 'finalize initiative' from: self gamemaster.
	
	self assert: output equals: self evaluator messageNotEnoughPlayers
	