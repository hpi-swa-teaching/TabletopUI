testing-death-saves
test23IncrementDeathSaves

	self characterSheet incrementDeathSaveSuccesses.
	self characterSheet incrementDeathSaveFailures.
	self assert: (self characterSheet deathSaveSuccesses = 1).
	self assert: (self characterSheet deathSaveFailures = 1)