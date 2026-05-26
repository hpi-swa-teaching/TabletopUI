testing-death-saves
test23IncrementDeathSaves

	self characterSheet incrementSuccessfulDeathSaves.
	self characterSheet incrementFailedDeathSaves.
	self assert: (self characterSheet deathSaveSuccesses = 1).
	self assert: (self characterSheet deathSaveFailures = 1)