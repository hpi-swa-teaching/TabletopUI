tests
test03RollWithModifier

	| result |
	result := inputEvaluator evaluateInput: 'roll d4+0' from: player.
	self assert: result = 'Invalid input.'.
	result := inputEvaluator evaluateInput: 'roll d4-0' from: player.
	self assert: result = 'Invalid input.'.
	result := inputEvaluator evaluateInput: 'roll d4+5' from: player.
	self assert: ((result rolls at: 1) between: 1 and: 4).
	self assert: (result resultValue between: 6 and: 9).
	result := inputEvaluator evaluateInput: 'roll d6-1' from: player.
	self assert: ((result rolls at: 1) between: 1 and: 6).
	self assert: (result resultValue between: 0 and: 5)