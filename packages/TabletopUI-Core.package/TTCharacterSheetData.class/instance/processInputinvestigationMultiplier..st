input and processing
processInputinvestigationMultiplier: aText

	self investigationMultiplier: aText.
	self changed: #investigationMultiplierModifier.
	self changed: #investigationMultiplier.
	self changed: #investigation