tests
test02RollValidDiceSize

	| result |
	result := inputEvaluator evaluate: 'roll d1'.
	self assert: result = '1 is not a valid dice size'.
	result := inputEvaluator evaluate: 'roll d7'.
	self assert: result = '7 is not a valid dice size'.
	result := inputEvaluator evaluate: 'roll d10'.
	self assert: (result asNumber >= 1 and: [result asNumber <= 10]).
	result := inputEvaluator evaluate: 'roll d20'.
	self assert: (result asNumber >= 1 and: [result asNumber <= 20])