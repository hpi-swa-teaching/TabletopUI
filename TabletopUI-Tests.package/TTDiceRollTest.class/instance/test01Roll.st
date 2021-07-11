testing
test01Roll

	| result |
	result := diceroll roll: 1.
	self assert: result equals: 1.
	result := diceroll roll: 4.
	self assert: (result between: 1 and: 4).
	result := diceroll roll: 6.
	self assert: (result between: 1 and: 6)