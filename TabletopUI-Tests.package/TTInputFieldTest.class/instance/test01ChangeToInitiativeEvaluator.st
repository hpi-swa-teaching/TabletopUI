testing
test01ChangeToInitiativeEvaluator
	
	self deny: (self inputField evaluator isKindOf: TTInitiativeEvaluator).
	self inputField changeToInitiativeEvaluator. 
	self assert: (self inputField evaluator isKindOf: TTInitiativeEvaluator)
