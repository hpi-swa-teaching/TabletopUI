tests
test01RollMultipleTimes

	| result |
	result := TTDice roll: 1 multipleTimes: 5.
	result do: [:aNumber | self assert: aNumber = 1].
	result := TTDice roll: 4 multipleTimes: 3.
	result do: [:aNumber | self assert: (aNumber >= 1 and: [aNumber <= 4])].
	result := TTDice roll: 6 multipleTimes: 23.
	self assert: (result size = 23)