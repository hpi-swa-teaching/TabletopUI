testing-throws
test16SkillThrowsDefaultWithProficiency

	self characterSheet skillsLookup keys do: [:aSkill | 
		self characterSheet perform: (aSkill, 'Multiplier:') asSymbol withArguments: (Array with: 1).
		self assert: (self characterSheet perform: aSkill asSymbol) equals: '2'.
		self characterSheet perform: (aSkill, 'Multiplier:') asSymbol withArguments: (Array with: 2).
		self assert: (self characterSheet perform: aSkill asSymbol) equals: '4'].