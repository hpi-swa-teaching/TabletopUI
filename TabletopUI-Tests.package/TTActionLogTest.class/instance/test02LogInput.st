testing
test02LogInput

	self assert: self log actionLogList size equals: 0. 
	self	log logInput: 'morning'.
	self 
		assert: self log actionLogList size equals: 1;
		assert: self log actionLogList first equals: 'INPUT: morning'
