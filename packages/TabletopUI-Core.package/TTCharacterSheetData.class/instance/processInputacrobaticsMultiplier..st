input and processing
processInputacrobaticsMultiplier: aText

	self acrobaticsMultiplier: aText.
	self changed: #acrobaticsMultiplierModifier.
	self changed: #acrobaticsMultiplier.
	self changed: #acrobatics