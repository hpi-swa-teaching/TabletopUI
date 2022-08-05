testing
test01LogOutput

	self log logOutput: 'klapperatismus'.
	self 
		assert: self log actionLogList size equals: 1;
		assert: self log actionLogList first equals: '> klapperatismus'