accessing - skills
medicineProficiency: aNumber

	self skillsLookup at: #medicine put: aNumber.
	self changesForSkill: #medicine
	