input and processing
processInputstealthMultiplier: aText

	self stealthMultiplier: aText.
	self changed: #stealthMultiplierModifier.
	self changed: #stealthMultiplier.
	self changed: #stealth.