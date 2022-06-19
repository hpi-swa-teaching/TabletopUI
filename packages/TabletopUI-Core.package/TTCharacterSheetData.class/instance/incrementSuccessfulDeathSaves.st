health and damage
incrementSuccessfulDeathSaves

	self successfulDeathSaves: self successfulDeathSaves + 1.
	self changed: #successfulDeathSavesString.