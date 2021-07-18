testing
test01Roll

	self assert: (self diceroll roll: 1) equals: 1.
	100 timesRepeat: [self assert: ((self diceroll roll: 6) between: 1 and: 6)]
