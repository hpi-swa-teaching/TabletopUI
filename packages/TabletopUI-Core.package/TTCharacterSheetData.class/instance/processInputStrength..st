input and processing
processInputStrength: aText

	self strength: aText.
	self changed: #strengthModifier.
	self changed: #strength.
	self updateThrowsAndSkills