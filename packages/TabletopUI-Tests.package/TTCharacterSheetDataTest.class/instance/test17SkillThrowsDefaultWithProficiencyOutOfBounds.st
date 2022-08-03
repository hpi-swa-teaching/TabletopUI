testing-throws
test17SkillThrowsDefaultWithProficiencyOutOfBounds

	self characterSheet skillsLookup keys do: [:aSkill | 
		self characterSheet perform: (aSkill, 'Multiplier:') asSymbol withArguments: (Array with: 420).
		self assert: (self characterSheet perform: aSkill asSymbol) equals: '4'.
		self characterSheet perform: (aSkill, 'Multiplier:') asSymbol withArguments: (Array with: -1337).
		self assert: (self characterSheet perform: aSkill asSymbol) equals: '0'].