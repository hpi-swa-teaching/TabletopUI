tests
test00roll

	| result |
	result := dice roll: 1.
	self assert: result = 1.
	result := dice roll: 4.
	self assert: (result >= 1 and: [result <= 4]).
	result := dice roll: 6.
	self assert: (result >= 1 and: [result <= 6])