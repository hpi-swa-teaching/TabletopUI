health and damage
resetDeathSaves

	self deathSaveFailures: self defaultDeathSaves.
	self deathSaveSuccesses: self defaultDeathSaves.
	self changed: #deathSaveFailuresString.
	self changed: #deathSaveSuccessesString