tests
test03RollWithModifier

	| result |
	result := inputEvaluator evaluate: 'roll d4+0'.
	self assert: result = 'Invalid input'.
	result := inputEvaluator evaluate: 'roll d4-0'.
	self assert: result = 'Invalid input'.
	result := ((inputEvaluator evaluate: 'roll d4+3') subStrings: ' ') last.
	self assert: (result asNumber >= 4 and: [result asNumber <= 7]).
	result := ((inputEvaluator evaluate: 'roll d6-1') subStrings: ' ') last.
	self assert: (result asNumber >= 0 and: [result asNumber <= 5])