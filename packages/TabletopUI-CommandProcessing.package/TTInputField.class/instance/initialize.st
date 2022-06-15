initialization
initialize

	super initialize.
	
	self evaluator: (TTDefaultEvaluator newWith: self).
	self parser: TTCommandParser new