health and damage
incrementFailedDeathSaves

	self deathSaveFailures: self deathSaveFailures + 1.
	self changed: #deathSaveFailuresString