accessing - combat
deathSaveFailures: anObject

	deathSaveFailures := (anObject asNumber) min: self defaultMaximumDeathSaves.
	self
		changed: #deathSaveFailures;
		changed: #deathSaveFailuresString