testing
test02OnlyPlayersRoll

	| output |
	
	output := self evaluator evaluateInput: self rolld6 from: self gamemaster.
	
	self assert: output equals: self evaluator ErrorOnlyPlayersRoll