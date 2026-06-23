testing-health
test67RestRestoresDeathSaves

	self characterSheet deathSaveSuccesses: 2.
	self characterSheet deathSaveFailures: 1.
	self characterSheet rest.
	self assert: self characterSheet deathSaveSuccesses = 0.
	self assert: self characterSheet deathSaveFailures = 0