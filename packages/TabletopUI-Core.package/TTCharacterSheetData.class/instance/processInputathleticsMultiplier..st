input and processing
processInputathleticsMultiplier: aText

	self athleticsMultiplier: aText.
	self changed: #athleticsMultiplierModifier.
	self changed: #athleticsMultiplier.
	self changed: #athletics.