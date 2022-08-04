input and processing
processInputanimalHandlingMultiplier: aText

	self animalHandlingMultiplier: aText.
	self changed: #animalHandlingMultiplierModifier.
	self changed: #animalHandlingMultiplier.
	self changed: #animalHandling