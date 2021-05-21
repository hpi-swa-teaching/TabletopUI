tests
test00InvalidInput

	| result |
	result := inputField evaluate: 'lsakdjflksf'.
	self assert: result = 'Invalid input'