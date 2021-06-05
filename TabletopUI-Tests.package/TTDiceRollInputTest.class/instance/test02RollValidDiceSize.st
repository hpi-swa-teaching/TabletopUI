tests
test02RollValidDiceSize

	| result |
	result := inputEvaluator evaluateInput: 'roll d1' from: player.
	self assert: result = '1 is not a valid dice size'.
	result := inputEvaluator evaluateInput: 'roll d7' from: player.
	self assert: result = '7 is not a valid dice size'.
	result := inputEvaluator evaluateInput: 'roll d10' from: player.
	self assert: (result asNumber >= 1 and: [result asNumber <= 10]).
	result := inputEvaluator evaluateInput: 'roll d20' from: player.
	self assert: (result asNumber >= 1 and: [result asNumber <= 20])