initialize-release
initializeSkillsLookup

	skillsLookup := Dictionary new.
	self class skillNames do: [:skill | skillsLookup at: skill put: 0]