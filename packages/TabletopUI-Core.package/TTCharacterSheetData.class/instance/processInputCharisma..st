input and processing
processInputCharisma: aText

	self charisma: aText.
	self changed: #charismaModifier.
	self changed: #charisma.