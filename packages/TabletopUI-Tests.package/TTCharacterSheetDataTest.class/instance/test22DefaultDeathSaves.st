testing-death-saves
test22DefaultDeathSaves

	self assert: (self characterSheet successfulDeathSaves = 0).
	self assert: (self characterSheet failedDeathSaves = 0)	