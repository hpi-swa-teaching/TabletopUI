testing-combat
test23IncrementDeathSaves

	self characterSheet incrementDeathSaveSuccesses.
	self characterSheet incrementDeathSaveFailures.
	self assert: self characterSheet deathSaveSuccesses equals: 1.
	self assert: self characterSheet deathSaveFailures equals: 1