testing-throws
test17SkillThrowsDefaultWithProficiencyOutOfBounds

	self characterSheet skillsLookup keys do: [:skill | 
		self characterSheet 
			perform: (skill, 'Proficiency:') asSymbol 
			with: 420.
		self assert: (self characterSheet perform: (skill, 'Bonus') asSymbol) equals: '2'.
		self characterSheet 
			perform: (skill, 'Proficiency:') asSymbol 
			with: -1337.
		self assert: (self characterSheet perform: (skill, 'Bonus') asSymbol) equals: '0'].