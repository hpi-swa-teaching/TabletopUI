testing
test01Roll

	self assert: (diceroll roll: 1) equals: 1.
	100 timesRepeat: [
		self assert: ((diceroll roll: 6) between: 1 and: 6)]
