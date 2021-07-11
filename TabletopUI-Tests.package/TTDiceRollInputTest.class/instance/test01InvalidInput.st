tests
test01InvalidInput

	| result |
	result := inputEvaluator evaluateInput: 'nonvalid input' from: player.
	self assert: result equals: 'Invalid input.'