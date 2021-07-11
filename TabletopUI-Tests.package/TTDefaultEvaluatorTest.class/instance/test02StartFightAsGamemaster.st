test	ing
test02StartFightAsGamemaster

	| output |
	
	output := self evaluator evaluateInput: 'start fight' from: self gamemaster.
	self assert: output equals: self evaluator startedInitiative