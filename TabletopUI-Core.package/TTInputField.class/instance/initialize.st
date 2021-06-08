initialization
initialize

	super initialize.
	
	self evaluator: (TTDefaultEvaluator newWithInputField: self)