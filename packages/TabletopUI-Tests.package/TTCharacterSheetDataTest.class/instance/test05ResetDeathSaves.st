testing-death-saves
test05ResetDeathSaves

	self characterSheet 
		successfulDeathSaves: 1;
		failedDeathSaves: 1;
		resetDeathSaves.
	self assert: (self characterSheet successfulDeathSaves = 0).
	self assert: (self characterSheet failedDeathSaves = 0)