health and damage
incrementFailedDeathSaves

	self failedDeathSaves: self failedDeathSaves + 1.
	self changed: #failedDeathSavesString