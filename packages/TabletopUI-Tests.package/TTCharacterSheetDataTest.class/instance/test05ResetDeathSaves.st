testing-death-saves
test05ResetDeathSaves

	self characterSheet 
		deathSaveSuccesses: 1;
		deathSaveFailures: 1;
		resetDeathSaves.
	self assert: (self characterSheet deathSaveSuccesses = 0).
	self assert: (self characterSheet deathSaveFailures = 0)