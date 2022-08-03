testing-death-saves
test23IncrementDeathSaves

	self characterSheet incrementSuccessfulDeathSaves.
	self characterSheet incrementFailedDeathSaves.
	self assert: (self characterSheet successfulDeathSaves = 1).
	self assert: (self characterSheet failedDeathSaves = 1)