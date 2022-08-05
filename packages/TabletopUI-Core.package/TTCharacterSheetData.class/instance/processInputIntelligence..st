input and processing
processInputIntelligence: aText

	self intelligence: aText.
	self changed: #intelligenceModifier.
	self changed: #intelligence.
	self updateThrowsAndSkills