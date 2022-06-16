input and processing
processInputsleightOfHandMultiplier: aText

	self sleightOfHandMultiplier: aText.
	self changed: #sleightOfHandMultiplierModifier.
	self changed: #sleightOfHandMultiplier.
	self changed: #sleightOfHand.