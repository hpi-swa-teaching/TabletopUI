tests
test05RollCombined

	| result |
	result := ((inputEvaluator evaluateInput: 'roll 1d4+3' from: player) subStrings: ' ') last.
	self assert: (result asNumber >= 4 and: [result asNumber <= 7]).
	result := ((inputEvaluator evaluateInput: 'roll 2d6+5' from: player) subStrings: ' ') last.
	self assert: (result asNumber >= 7 and: [result asNumber <= 17]).
	result := ((inputEvaluator evaluateInput: 'roll 5d8-10' from: player) subStrings: ' ') last.
	self assert: (result asNumber >= -5 and: [result asNumber <= 30])