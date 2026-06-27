testing-combat
test22DefaultDeathSaves

	self assert: self characterSheet deathSaveSuccesses equals: 0.
	self assert: self characterSheet deathSaveFailures equals: 0