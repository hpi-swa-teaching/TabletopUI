input and processing
processInputcharismaMultiplier: aText

	self charismaSaveMultiplier: aText.
	self changed: #charismaSaveMultiplier.
	self changed: #charismaSave