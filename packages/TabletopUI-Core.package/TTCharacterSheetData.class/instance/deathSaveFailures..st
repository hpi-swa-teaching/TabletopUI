accessing - combat
deathSaveFailures: anObject

	deathSaveFailures := anObject asNumber \\ (self defaultMaximumDeathSaves + 1).
	self
		changed: #deathSaveFailures;
		changed: #deathSaveFailuresString