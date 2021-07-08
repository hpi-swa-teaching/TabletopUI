tests
test05RollCombined

	| result |
	result := ((inputEvaluator evaluateInput: 'roll 1d4+3' from: player) subStrings: ' ') last.
	self assert: (result asNumber between: 4 and: 7).
	result := ((inputEvaluator evaluateInput: 'roll 2d6+5' from: player) subStrings: ' ') last.
	self assert: (result asNumber between: 7 and: 17).
	result := ((inputEvaluator evaluateInput: 'roll 5d8-10' from: player) subStrings: ' ') last.
	self assert: (result asNumber between: -5 and: 30)