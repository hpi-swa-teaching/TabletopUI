as yet unclassified
test00logInput

	self assert: log actionLogList size equals:  0.
	log logInput: 'morning'.
	self assert: log actionLogList size equals:  1.
	self assert: log actionLogList first equals:  'INPUT: morning'
