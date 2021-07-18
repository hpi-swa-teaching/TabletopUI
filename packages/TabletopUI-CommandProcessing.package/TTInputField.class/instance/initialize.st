initialization
initialize

	super initialize.
	
	self evaluator: (TTDefaultEvaluator newWith: self)