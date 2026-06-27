testing-combat
test05ResetDeathSaves

	self characterSheet 
		deathSaveSuccesses: 1;
		deathSaveFailures: 1;
		restoreDeathSaves.
	self assert: self characterSheet deathSaveSuccesses equals: 0.
	self assert: self characterSheet deathSaveFailures equals: 0