input and processing
processInputsurvivalMultiplier: aText

	self survivalMultiplier: aText.
	self changed: #survivalMultiplierModifier.
	self changed: #survivalMultiplier.
	self changed: #survival