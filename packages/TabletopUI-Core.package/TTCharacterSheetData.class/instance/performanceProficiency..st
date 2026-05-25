accessing - skills
performanceProficiency: aNumber

	self skillsLookup at: #performance put: aNumber.
	self changesForSkill: #performance
	