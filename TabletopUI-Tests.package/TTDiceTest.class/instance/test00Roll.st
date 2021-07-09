tests
test00Roll

	| result |
	result := TTDice roll: 1.
	self assert: result = 1.
	result := TTDice roll: 4.
	self assert: (result >= 1 and: [result <= 4]).
	result := TTDice roll: 6.
	self assert: (result >= 1 and: [result <= 6])