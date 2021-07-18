testing
test02ChangeToFightEvaluator
	 
	self deny: (self inputField evaluator isKindOf: TTFightEvaluator).
	self inputField changeToFightEvaluatorWithFightOrder: {'' . ''} asOrderedCollection.
	self assert: (self inputField evaluator isKindOf: TTFightEvaluator).
	self inputField evaluator display delete
