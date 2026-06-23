accessing - combat
deathSaveSuccesses: anObject

	deathSaveSuccesses := (anObject asNumber) min: self defaultMaximumDeathSaves.
	self
		changed: #deathSaveSuccesses;
		changed: #deathSaveSuccessesString