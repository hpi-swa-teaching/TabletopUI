testing - abilities
test53ModifierDefault

	TTCharacterSheetData abilityNames do: [:ability |
		self assert: (self characterSheet modifierOf: ability) = 0]