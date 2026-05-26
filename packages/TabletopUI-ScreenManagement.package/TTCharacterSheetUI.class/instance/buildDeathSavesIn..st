build
buildDeathSavesIn: aMorph

	self deathSaveSuccessMorph: (self addButton: #applyIncrementDeathSaveSuccesses
		form: self deathSaveSuccessForm
		sized: self buttonRowExtent
		at: 47 @ 43
		in: aMorph).
	self deathSaveFailureMorph: (self addButton: #applyIncrementDeathSaveFailures
		form: self deathSaveFailureForm
		sized: self buttonRowExtent
		at: 47 @ 91
		in: aMorph)