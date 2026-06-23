rules - combat
restoreDeathSaves

	self
		deathSaveFailures: self defaultDeathSaves;
		deathSaveSuccesses: self defaultDeathSaves;
		changed: #deathSaveFailuresString;
		changed: #deathSaveSuccessesString