input and processing
processInputnatureMultiplier: aText

	self natureMultiplier: aText.
	self changed: #natureMultiplierModifier.
	self changed: #natureMultiplier.
	self changed: #nature