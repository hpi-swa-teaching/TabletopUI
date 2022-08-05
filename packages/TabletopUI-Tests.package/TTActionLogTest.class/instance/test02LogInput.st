testing
test02LogInput

	self log logInput: 'morning'.
	self 
		assert: self log actionLogList size equals: 1;
		assert: self log actionLogList first equals: 'INPUT: morning'
