testing
test01LogOutput

	self assert: self log actionLogList size equals:  0.
	self log logOutput: 'klapperatismus'.
	self assert: self log actionLogList size equals:  1.
	self assert: self log actionLogList first equals:  '> klapperatismus'