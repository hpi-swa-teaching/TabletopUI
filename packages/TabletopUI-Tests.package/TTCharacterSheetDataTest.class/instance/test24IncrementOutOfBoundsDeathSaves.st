testing-combat
test24IncrementOutOfBoundsDeathSaves

	self characterSheet 
		deathSaveSuccesses: 3;
		deathSaveFailures: 3;
		incrementDeathSaveSuccesses;
		incrementDeathSaveFailures.
	self assert: (self characterSheet deathSaveSuccesses = 3).
	self assert: (self characterSheet deathSaveFailures = 3)