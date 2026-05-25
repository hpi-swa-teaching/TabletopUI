accessing - skills
animalHandlingProficiency: aNumber

	self skillsLookup at: #animalHandling put: aNumber.
	self changesForSkill: #animalHandling
	