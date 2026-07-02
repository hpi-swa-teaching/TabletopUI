testing - skills
test58SkillsProficiencyClamp

	self characterSheet skillsLookupAt: #athletics put: -3.
	self assert: (self characterSheet skillsLookupAt: #athletics) equals: 0.	
	self assert: (self characterSheet skillBonusFor: #athletics) equals: 0.
	self characterSheet skillsLookupAt: #arcana put: 420.
	self assert: (self characterSheet skillsLookupAt: #arcana) equals: 1.
	self assert: (self characterSheet skillBonusFor: #arcana) equals: 2.