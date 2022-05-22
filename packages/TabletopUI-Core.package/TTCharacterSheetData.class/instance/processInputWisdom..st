input and processing
processInputWisdom: aText

	self wisdom: aText.
	self changed: #wisdomModifier.
	self changed: #wisdom.