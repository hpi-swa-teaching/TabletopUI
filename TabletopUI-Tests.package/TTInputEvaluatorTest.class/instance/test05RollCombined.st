tests
test05RollCombined

	| result |
	result := ((inputEvaluator evaluate: 'roll 1d4+3') subStrings: ' ') last.
	self assert: (result asNumber >= 4 and: [result asNumber <= 7]).
	result := ((inputEvaluator evaluate: 'roll 2d6+5') subStrings: ' ') last.
	self assert: (result asNumber >= 7 and: [result asNumber <= 17]).
	result := ((inputEvaluator evaluate: 'roll 5d8-10') subStrings: ' ') last.
	self assert: (result asNumber >= -5 and: [result asNumber <= 30])