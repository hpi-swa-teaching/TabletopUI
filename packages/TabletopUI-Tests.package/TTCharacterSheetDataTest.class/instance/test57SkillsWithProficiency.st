testing - skills
test57SkillsWithProficiency

	TTCharacterSheetData skillNames do: [:skill |
		self characterSheet skillsLookupAt: (skill asSymbol) put: 1.
		self assert: (self characterSheet skillBonusFor: (skill asSymbol)) equals: 2]