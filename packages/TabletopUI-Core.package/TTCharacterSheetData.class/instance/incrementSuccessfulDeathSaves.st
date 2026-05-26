health and damage
incrementSuccessfulDeathSaves

	self deathSaveSuccesses: self deathSaveSuccesses + 1.
	self changed: #deathSaveSuccessesString