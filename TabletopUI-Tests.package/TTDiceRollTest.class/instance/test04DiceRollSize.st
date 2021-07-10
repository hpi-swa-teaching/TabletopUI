tests
test04DiceRollSize

	| result |
	result := diceroll roll: 4 multipleTimes: 12.
	self assert: result rolls size equals: 12.
	result := diceroll roll: 6 multipleTimes: 23.
	self assert: result rolls size equals: 23