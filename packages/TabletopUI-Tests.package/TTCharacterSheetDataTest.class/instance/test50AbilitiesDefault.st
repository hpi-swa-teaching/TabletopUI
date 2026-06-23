testing - abilities
test50AbilitiesDefault

	TTCharacterSheetData abilityNames do: [:ability |
		self assert: (self characterSheet abilitiesAt: ability) = '10']