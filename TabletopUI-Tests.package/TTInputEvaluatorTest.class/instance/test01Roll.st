tests
test01Roll

	| result |
	result := inputEvaluator evaluate: 'roll d'.
	self assert: result = 'Invalid input'.
	result := inputEvaluator evaluate: 'roll d06'.
	self assert: result = 'Invalid input'.
	result := inputEvaluator evaluate: 'roll d4'.
	self assert: (result asNumber >= 1 and: [result asNumber <= 4]).
	result := inputEvaluator evaluate: 'roll d6'.
	self assert: (result asNumber >= 1 and: [result asNumber <= 6])