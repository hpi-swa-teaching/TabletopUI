testing-initialization
test49InitializeWithFighter

	self characterSheet initializeWith: #fighter.
	self assert: self characterSheet armorClass equals: '18'.
	self assert: self characterSheet speed equals: '9'.