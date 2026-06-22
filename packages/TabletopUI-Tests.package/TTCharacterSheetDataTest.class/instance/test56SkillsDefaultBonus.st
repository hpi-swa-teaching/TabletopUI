testing - skills
test56SkillsDefaultBonus

	TTCharacterSheetData skillNames do: [:skill |
		self assert: (self characterSheet skillBonusFor: (skill asSymbol)) = 0]