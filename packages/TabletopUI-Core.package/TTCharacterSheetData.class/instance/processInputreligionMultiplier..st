input and processing
processInputreligionMultiplier: aText

	self religionMultiplier: aText.
	self changed: #religionMultiplierModifier.
	self changed: #religionMultiplier.
	self changed: #religion