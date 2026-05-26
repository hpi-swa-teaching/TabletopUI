accessing - combat
deathSaveSuccesses: anObject

	deathSaveSuccesses := anObject asNumber \\ (self defaultMaxDeathSaves + 1).
	self
		changed: #deathSaveSuccesses;
		changed: #deathSaveSuccessesString