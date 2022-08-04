input and processing
processInputinsightMultiplier: aText

	self insightMultiplier: aText.
	self changed: #insightMultiplierModifier.
	self changed: #insightMultiplier.
	self changed: #insight