input handling
synchronizeDeathSaveRows

	self changeDeathSaveRowImageIn: self deathSaveSuccessMorph
		for: 'successes'
		to: self model deathSaveSuccesses.
	self changeDeathSaveRowImageIn: self deathSaveFailureMorph
		for: 'failures'
		to: self model deathSaveFailures.	 