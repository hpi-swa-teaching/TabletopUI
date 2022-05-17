as yet unclassified
processInputStrength: aText

	self dataModel strength: aText.
	self changed: #strengthModifier.
	self changed: #strength.