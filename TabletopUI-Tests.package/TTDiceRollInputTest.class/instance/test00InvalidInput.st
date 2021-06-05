tests
test00InvalidInput

	| result |
	result := inputEvaluator evaluateInput: 'lsakdjflksf' from: player.
	self assert: result = 'Invalid input'