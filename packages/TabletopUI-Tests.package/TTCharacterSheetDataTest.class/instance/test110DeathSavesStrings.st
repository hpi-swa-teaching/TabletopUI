testing-combat
test110DeathSavesStrings

	self assert: (self characterSheet deathSaveSuccesses asString) = self characterSheet deathSaveSuccessesString.
	self assert: (self characterSheet deathSaveFailures asString) = self characterSheet deathSaveFailuresString.