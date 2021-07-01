tests
test03RollWithModifier

	| result |
	result := inputEvaluator evaluateInput: 'roll d4+0' from: player.
	self assert: result = 'Invalid input'.
	result := inputEvaluator evaluateInput: 'roll d4-0' from: player.
	self assert: result = 'Invalid input'.
	result := ((inputEvaluator evaluateInput: 'roll d4+5' from: player) subStrings: ' ') last.
	self assert: (result asNumber >= 6 and: [result asNumber <= 9]).
	result := ((inputEvaluator evaluateInput: 'roll d6-1' from: player) subStrings: ' ') last.
	self assert: (result asNumber >= 0 and: [result asNumber <= 5])