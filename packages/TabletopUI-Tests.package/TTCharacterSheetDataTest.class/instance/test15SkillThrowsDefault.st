testing-throws
test15SkillThrowsDefault

	self characterSheet skillsLookup keys do: [:aSkill | 
		self assert: (self characterSheet perform: aSkill asSymbol) equals: '0'].