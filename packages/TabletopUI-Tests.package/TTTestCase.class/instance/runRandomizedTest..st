randomized-testing
runRandomizedTest: aBlock

	self randomizedTestCount timesRepeat: [aBlock value]