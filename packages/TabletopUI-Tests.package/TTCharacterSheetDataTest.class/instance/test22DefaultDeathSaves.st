testing-death-saves
test22DefaultDeathSaves

	self assert: (self characterSheet deathSaveSuccesses = 0).
	self assert: (self characterSheet deathSaveFailures = 0)	