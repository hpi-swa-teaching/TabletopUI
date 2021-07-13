testing
test01MultipleRolls

	| player output |
	
	player := self players first.
	self evaluator evaluateInput: self rolld6 from: player.
	output := self evaluator evaluateInput: self rolld6 from: player.
	
	self assert: output equals: self evaluator messageMultipleRolls
	