rules - health and damage
resetDeathSaves

	self
		deathSaveFailures: self defaultDeathSaves;
		deathSaveSuccesses: self defaultDeathSaves;
		changed: #deathSaveFailuresString;
		changed: #deathSaveSuccessesString