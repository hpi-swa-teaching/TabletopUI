running
setUp

	super setUp.
	
	self evaluator: (TTFightEvaluator newWithInputField: self inputField fightOrder: (self players shuffle))