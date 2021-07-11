testing
test04EndFight

	| output |
	
	output := self evaluator evaluateInput: 'end fight' from: self randomPlayer.
	self assert: output equals: self evaluator ErrorNotAuthorised.
	
	output := self evaluator evaluateInput: 'end fight' from: self gamemaster.
	self assert: output equals: self evaluator fightIsOver



