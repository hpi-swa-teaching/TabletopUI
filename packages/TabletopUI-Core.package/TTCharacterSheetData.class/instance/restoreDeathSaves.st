rules - health and damage
restoreDeathSaves

	self
		deathSaveFailures: self defaultDeathSaves;
		deathSaveSuccesses: self defaultDeathSaves;
		changed: #deathSaveFailuresString;
		changed: #deathSaveSuccessesString