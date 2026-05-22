input and processing
processInputpersuasionMultiplier: aText

	self persuasionMultiplier: aText.
	self changed: #persuasionMultiplierModifier.
	self changed: #persuasionMultiplier.
	self changed: #persuasion