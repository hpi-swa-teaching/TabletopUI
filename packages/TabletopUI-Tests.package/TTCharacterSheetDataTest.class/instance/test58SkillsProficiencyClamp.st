testing - skills
test58SkillsProficiencyClamp

	self characterSheet skillsLookupAt: #athletics put: -3.
	self assert: (self characterSheet skillsLookupAt: #athletics) = 0.	
	self assert: (self characterSheet skillBonusFor: #athletics) = 0.
	self characterSheet skillsLookupAt: #arcana put: 420.
	self assert: (self characterSheet skillsLookupAt: #arcana) = 1.
	self assert: (self characterSheet skillBonusFor: #arcana) = 2.