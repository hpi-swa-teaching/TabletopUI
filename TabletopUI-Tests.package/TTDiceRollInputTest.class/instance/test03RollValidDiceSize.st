tests
test03RollValidDiceSize

	| result |
	result := inputEvaluator evaluateInput: 'roll d1' from: player.
	self assert: result equals: '1 is not a valid dice size.'.
	result := inputEvaluator evaluateInput: 'roll d7' from: player.
	self assert: result equals: '7 is not a valid dice size.'.
	result := inputEvaluator evaluateInput: 'roll d10' from: player.
	self assert: ((result rolls at: 1) between: 1 and: 10).
	result := inputEvaluator evaluateInput: 'roll d20' from: player.
	self assert: ((result rolls at: 1) between: 1 and: 20)