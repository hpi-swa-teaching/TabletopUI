testing
test01RollMultipleTimes

	| result |
	result := diceroll roll: 1 multipleTimes: 5.
	result rolls do: [:aNumber | self assert: aNumber equals: 1].
	result := diceroll roll: 4 multipleTimes: 3.
	result rolls do: [:aNumber | self assert: (aNumber between: 1 and: 4)].