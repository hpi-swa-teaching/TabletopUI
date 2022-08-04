input and processing
processInputperceptionMultiplier: aText

	self perceptionMultiplier: aText.
	self changed: #perceptionMultiplierModifier.
	self changed: #perceptionMultiplier.
	self changed: #perception