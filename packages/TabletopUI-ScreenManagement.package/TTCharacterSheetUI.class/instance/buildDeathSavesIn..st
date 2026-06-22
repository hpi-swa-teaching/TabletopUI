build
buildDeathSavesIn: aMorph

	self deathSaveSuccessMorph: (self addButton: #applyIncrementDeathSaveSuccesses
		form: (self formForDeathSave: 'successes' at: self model deathSaveSuccesses)
		sized: self buttonRowExtent
		at: 47 @ 43
		in: aMorph).
	self deathSaveFailureMorph: (self addButton: #applyIncrementDeathSaveFailures
		form: (self formForDeathSave: 'failures' at: self model deathSaveFailures)
		sized: self buttonRowExtent
		at: 47 @ 91
		in: aMorph)