accessing - combat
deathSaveFailures: anObject

	deathSaveFailures := anObject asNumber \\ (self defaultMaxDeathSaves + 1).
	self
		changed: #deathSaveFailures;
		changed: #deathSaveFailuresString