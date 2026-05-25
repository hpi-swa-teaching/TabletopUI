accessing - skills
survivalProficiency: aNumber

	self skillsLookup at: #survival put: aNumber.
	self changesForSkill: #survival
	