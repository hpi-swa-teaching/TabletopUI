input handling - combat
applyIncrementDeathSaveSuccesses

	self model incrementDeathSaveSuccesses.
	self changeDeathSaveRowImageIn: self deathSaveSuccessMorph
		for: 'successes'
		to: self model deathSaveSuccesses