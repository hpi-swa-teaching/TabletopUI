testing
test01MultipleRolls

	| player output |
	
	player := self randomPlayer.
	self evaluator evaluateInput: self rolld6 from: player.
	output := self evaluator evaluateInput: self rolld6 from: player.
	
	self assert: output equals: self evaluator ErrorMultipleRolls
	