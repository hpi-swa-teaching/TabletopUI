testing - skills
test55SkillsDefaultProficiency

	TTCharacterSheetData skillNames do: [:skill |
		self assert: (self characterSheet skillsLookupAt: (skill asSymbol)) equals: 0]