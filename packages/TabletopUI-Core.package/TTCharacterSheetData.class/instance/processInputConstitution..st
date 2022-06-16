input and processing
processInputConstitution: aText

	self constitution: aText.
	self changed: #constitutionModifier.
	self changed: #constitution.
	self updateThrowsAndSkills.