accessing - skills
arcanaProficiency: aNumber

	self skillsLookup at: #arcana put: aNumber.
	self changesForSkill: #arcana
	