initialize-release
initializeSkillsLookup

	self skillsLookup: Dictionary new.
	self class skillNames do: [:skill | self skillsLookup at: skill put: 0]