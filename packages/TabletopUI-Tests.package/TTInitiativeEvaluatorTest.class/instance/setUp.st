running
setUp

	super setUp.
	
	self evaluator: (TTInitiativeEvaluator newWith: self inputField)