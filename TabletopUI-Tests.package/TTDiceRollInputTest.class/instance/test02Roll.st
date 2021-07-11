testing
test02Roll

	| result |
	result := inputEvaluator evaluateInput: 'roll d' from: player.
	self assert: result equals: 'Invalid input.'.
	result := inputEvaluator evaluateInput: 'roll d06' from: player.
	self assert: result equals: 'Invalid input.'.
	result := inputEvaluator evaluateInput: 'roll d4' from: player.
	self assert: ((result rolls at: 1) between: 1 and: 4).
	result := inputEvaluator evaluateInput: 'roll d6' from: player.
	self assert: ((result rolls at: 1) between: 1 and: 6)