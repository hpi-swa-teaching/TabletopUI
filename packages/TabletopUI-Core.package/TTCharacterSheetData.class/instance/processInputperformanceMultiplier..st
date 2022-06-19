input and processing
processInputperformanceMultiplier: aText

	self performanceMultiplier: aText.
	self changed: #performanceMultiplierModifier.
	self changed: #performanceMultiplier.
	self changed: #performance.