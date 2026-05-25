accessing - skills
stealthProficiency: aNumber

	self skillsLookup at: #stealth put: aNumber.
	self changesForSkill: #stealth
	