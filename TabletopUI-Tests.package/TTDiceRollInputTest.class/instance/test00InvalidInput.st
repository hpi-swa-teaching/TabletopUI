tests
test00InvalidInput

	| result |
	result := inputEvaluator evaluateInput: 'nonvalid input' from: player.
	self assert: result = 'Invalid input.'