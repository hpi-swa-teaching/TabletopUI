testing-death-saves
test24IncrementOutOfBoundsDeathSaves

	self characterSheet 
		successfulDeathSaves: 3;
		failedDeathSaves: 3;
		incrementSuccessfulDeathSaves;
		incrementFailedDeathSaves.
	self assert: (self characterSheet successfulDeathSaves = 3).
	self assert: (self characterSheet failedDeathSaves = 3)