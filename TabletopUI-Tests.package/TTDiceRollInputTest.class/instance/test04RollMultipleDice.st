tests
test04RollMultipleDice

	| result |
	result := inputEvaluator evaluateInput: 'roll 0d4' from: player.
	self assert: result = 'Invalid input.'.
	result := inputEvaluator evaluateInput: 'roll 1d4' from: player.
	self assert: ((result rolls at: 1) between: 1 and: 4).
	result := ((inputEvaluator evaluateInput: 'roll 3d6' from: player) subStrings: ' ') last.
	self assert: (result asNumber between: 3 and: 18).
	result := ((inputEvaluator evaluateInput: 'roll 2d8' from: player) subStrings: ' ').
	self assert: ((result at: 1) asNumber between: 1 and: 8).
	self assert: ((result at: 3) asNumber between: 1 and: 8)