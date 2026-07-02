testing-health
test67RestRestoresDeathSaves

	self characterSheet deathSaveSuccesses: 2.
	self characterSheet deathSaveFailures: 1.
	self characterSheet rest.
	self assert: self characterSheet deathSaveSuccesses equals: 0.
	self assert: self characterSheet deathSaveFailures equals: 0