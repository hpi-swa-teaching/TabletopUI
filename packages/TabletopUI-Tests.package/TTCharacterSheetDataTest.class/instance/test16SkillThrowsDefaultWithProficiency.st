testing-saving throws
test16SkillThrowsDefaultWithProficiency

	self characterSheet skillsLookup keys do: [:skill | 
		self characterSheet 
			perform: (skill, 'Proficiency:') asSymbol 
			with: 1.
		self assert: (self characterSheet perform: (skill, 'Bonus') asSymbol) equals: '2'.
		self characterSheet 
			perform: (skill, 'Proficiency:') asSymbol 
			with: 0.
		self assert: (self characterSheet perform: (skill, 'Bonus') asSymbol) equals: '0'].