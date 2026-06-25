testing-initialization
test49InitializeWithFighter

	self characterSheet: (TTCharacterSheetData forTemplate: #fighter).
	self assert: self characterSheet armorClass equals: '11'.
	self assert: self characterSheet speed equals: '30'.