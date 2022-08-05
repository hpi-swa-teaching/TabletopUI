input and processing
processInputintimidationMultiplier: aText

	self intimidationMultiplier: aText.
	self changed: #intimidationMultiplierModifier.
	self changed: #intimidationMultiplier.
	self changed: #intimidation