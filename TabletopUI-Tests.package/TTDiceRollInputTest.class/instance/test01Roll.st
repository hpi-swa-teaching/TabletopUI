tests
test01Roll

	| result |
	result := inputEvaluator evaluateInput: 'roll d' from: player.
	self assert: result = 'Invalid input'.
	result := inputEvaluator evaluateInput: 'roll d06' from: player.
	self assert: result = 'Invalid input'.
	result := inputEvaluator evaluateInput: 'roll d4' from: player.
	self assert: (result asNumber >= 1 and: [result asNumber <= 4]).
	result := inputEvaluator evaluateInput: 'roll d6' from: player.
	self assert: (result asNumber >= 1 and: [result asNumber <= 6])