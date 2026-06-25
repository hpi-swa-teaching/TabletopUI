testing-initialization
test48InitializeWithWizard

	self characterSheet: (TTCharacterSheetData forTemplate: #wizard).
	self assert: (self characterSheet abilities at: #strength) equals: 8.
	self assert: (self characterSheet abilities at: #intelligence) equals: 15.
	self assert: self characterSheet maxHP equals: '8'.
	self assert: self characterSheet currentHP equals: '8'.