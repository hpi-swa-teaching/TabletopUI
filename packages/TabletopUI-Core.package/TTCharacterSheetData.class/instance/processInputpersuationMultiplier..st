input and processing
processInputpersuationMultiplier: aText

	self persuasionMultiplier: aText.
	self changed: #persuationMultiplierModifier.
	self changed: #persuasionMultiplier.
	self changed: #persuasion