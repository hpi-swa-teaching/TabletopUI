testing - skills
test59SkillsBonusUpdate

	self characterSheet abilitiesAt: #dexterity put: 14.
	self characterSheet skillsLookupAt: #acrobatics put: 1.
	self assert: (self characterSheet skillBonusFor: #acrobatics) equals: 4