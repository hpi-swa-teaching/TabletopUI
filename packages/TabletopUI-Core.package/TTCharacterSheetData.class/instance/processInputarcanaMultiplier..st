input and processing
processInputarcanaMultiplier: aText

	self arcanaMultiplier: aText.
	self changed: #arcanaMultiplierModifier.
	self changed: #arcanaMultiplier.
	self changed: #arcana.