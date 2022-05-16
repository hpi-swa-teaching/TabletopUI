testing
test05DeathSaves

	self assert: (self characterSheet successfulDeathSaves = 0).
	self assert: (self characterSheet failedDeathSaves = 0).
	self characterSheet incrementSuccessfulDeathSaves.
	self characterSheet incrementFailedDeathSaves.
	self characterSheet incrementFailedDeathSaves.
	self characterSheet incrementFailedDeathSaves.
	self characterSheet incrementFailedDeathSaves.
	self assert: (self characterSheet successfulDeathSaves = 1).
	self assert: (self characterSheet failedDeathSaves = 3).
	self characterSheet resetDeathSaves.
	self assert: (self characterSheet successfulDeathSaves = 0).
	self assert: (self characterSheet failedDeathSaves = 0)