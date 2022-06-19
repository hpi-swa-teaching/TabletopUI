input and processing
processInputhistoryMultiplier: aText

	self historyMultiplier: aText.
	self changed: #historyMultiplierModifier.
	self changed: #historyMultiplier.
	self changed: #history.