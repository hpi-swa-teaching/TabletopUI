accessing - combat
deathSaveSuccesses: anObject

	deathSaveSuccesses := anObject asNumber \\ (self defaultMaximumDeathSaves + 1).
	self
		changed: #deathSaveSuccesses;
		changed: #deathSaveSuccessesString