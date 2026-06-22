testing-throws
test15SkillThrowsDefault

	self characterSheet skillsLookup keys do: [:skill | 
		self assert: (self characterSheet perform: (skill, 'Bonus') asSymbol) equals: '0'].