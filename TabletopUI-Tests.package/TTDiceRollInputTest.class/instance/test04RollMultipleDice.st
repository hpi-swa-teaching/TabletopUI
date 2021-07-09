tests
test04RollMultipleDice

	| result |
	result := inputEvaluator evaluateInput: 'roll 0d4' from: player.
	self assert: result = 'Invalid input'.
	result := inputEvaluator evaluateInput: 'roll 1d4' from: player.
	self assert: (result asNumber >= 1 and: [result asNumber <= 4]).
	result := ((inputEvaluator evaluateInput: 'roll 3d6' from: player) subStrings: ' ') last.
	self assert: (result asNumber >= 3 and: [result asNumber <= 18]).
	result := ((inputEvaluator evaluateInput: 'roll 2d8' from: player) subStrings: ' ') .
	self assert: ((result at: 1) asNumber >= 1 and: [(result at: 1) asNumber <= 8]).
	self assert: ((result at: 3) asNumber >= 1 and: [(result at: 3) asNumber <= 8])