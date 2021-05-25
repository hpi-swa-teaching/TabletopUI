tests
test00InvalidInput

	| result |
	result := inputEvaluator evaluate: 'lsakdjflksf'.
	self assert: result = 'Invalid input'