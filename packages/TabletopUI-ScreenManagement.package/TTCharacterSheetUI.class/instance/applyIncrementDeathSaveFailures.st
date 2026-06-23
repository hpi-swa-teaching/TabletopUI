input handling - combat
applyIncrementDeathSaveFailures

	self model incrementDeathSaveFailures.
	self changeDeathSaveRowImageIn: self deathSaveFailureMorph
		for: 'failures'
		to: self model deathSaveFailures