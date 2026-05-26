testing-death-saves
test24IncrementOutOfBoundsDeathSaves

	self characterSheet 
		deathSaveSuccesses: 3;
		deathSaveFailures: 3;
		incrementSuccessfulDeathSaves;
		incrementFailedDeathSaves.
	self assert: (self characterSheet deathSaveSuccesses = 3).
	self assert: (self characterSheet deathSaveFailures = 3)