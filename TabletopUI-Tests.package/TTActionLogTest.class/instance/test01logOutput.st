as yet unclassified
test01logOutput

	self assert: log actionLogList size equals:  0.
	log logOutput: 'klapperatismus'.
	self assert: log actionLogList size equals:  1.
	self assert: log actionLogList first equals:  '> klapperatismus'