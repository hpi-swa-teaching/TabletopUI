running
setUp

	super setUp.
	
	self evaluator: (TTDefaultEvaluator newWith: self inputField)