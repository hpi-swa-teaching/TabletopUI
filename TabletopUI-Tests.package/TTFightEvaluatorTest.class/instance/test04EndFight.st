testing
test04EndFight

	| output |
	
	output := self evaluator evaluateInput: 'end fight' from: self players first.
	self assert: output equals: self evaluator messageNotAuthorised.
	
	output := self evaluator evaluateInput: 'end fight' from: self gamemaster.
	self assert: output equals: self evaluator messageFightIsOver



