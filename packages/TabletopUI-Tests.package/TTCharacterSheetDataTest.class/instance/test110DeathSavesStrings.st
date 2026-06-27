testing-combat
test110DeathSavesStrings

	self assert: (self characterSheet deathSaveSuccesses asString) equals: self characterSheet deathSaveSuccessesString.
	self assert: (self characterSheet deathSaveFailures asString) equals: self characterSheet deathSaveFailuresString.