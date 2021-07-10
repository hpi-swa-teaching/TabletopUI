tests
test04RollMultipleDice

	| result |
	result := inputEvaluator evaluateInput: 'roll 0d4' from: player.
	self assert: result equals: 'Invalid input.'.
	result := inputEvaluator evaluateInput: 'roll 1d4' from: player.
	self assert: ((result rolls at: 1) between: 1 and: 4).
	result := (inputEvaluator evaluateInput: 'roll 3d6' from: player).
	result rolls do: [:aNumber | self assert: (aNumber between: 1 and: 6)].
	self assert: result rolls size equals: 3.
	result := (inputEvaluator evaluateInput: 'roll 2d8' from: player).
	result rolls do: [:aNumber | self assert: (aNumber between: 1 and: 8)].
	self assert: result rolls size equals: 2