testing
test05RollOnceWithInvalidModifier

	| result |
	result := inputEvaluator evaluateInput: 'roll d4+0' from: player.
	self assert: result equals: 'Invalid input.'.
	result := inputEvaluator evaluateInput: 'roll d4-0' from: player.
	self assert: result equals: 'Invalid input.'