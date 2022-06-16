input and processing
processInputpersuationMultiplier: aText

	self persuationMultiplier: aText.
	self changed: #persuationMultiplierModifier.
	self changed: #persuationMultiplier.
	self changed: #persuation.