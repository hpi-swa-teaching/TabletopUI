input and processing
processInputDexterity: aText

	self dexterity: aText.
	self changed: #dexterityModifier.
	self changed: #dexterity.
	self changed: #initiative.
	self updateThrowsAndSkills.