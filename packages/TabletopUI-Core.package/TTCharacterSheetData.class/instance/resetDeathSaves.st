health and damage
resetDeathSaves

	self failedDeathSaves: self defaultDeathSaves.
	self successfulDeathSaves: self defaultDeathSaves.
	self changed: #failedDeathSavesString.
	self changed: #successfulDeathSavesString