testing
test03ChangeToDefaultEvaluator
	
	self inputField changeToInitiativeEvaluator. 
	self deny: (self inputField evaluator isKindOf: TTDefaultEvaluator).
	self inputField changeToDefaultEvaluator. 
	self assert: (self inputField evaluator isKindOf: TTDefaultEvaluator)
