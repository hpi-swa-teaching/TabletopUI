input and processing
processInputdeceptionMultiplier: aText

	self deceptionMultiplier: aText.
	self changed: #deceptionMultiplierModifier.
	self changed: #deceptionMultiplier.
	self changed: #deception.