testing
test04EndRollForInitiative

	| output |
	
	self rollForInitiative.
	output := self evaluator evaluateInput: 'finalize initiative' from: self randomPlayer.
	self assert: output equals: self evaluator messageNotAuthorised.
	output := self evaluator evaluateInput: 'finalize initiative' from: self gamemaster.
	self assert: output equals: self evaluator messageFightBegins.
	self inputField evaluator display delete

		