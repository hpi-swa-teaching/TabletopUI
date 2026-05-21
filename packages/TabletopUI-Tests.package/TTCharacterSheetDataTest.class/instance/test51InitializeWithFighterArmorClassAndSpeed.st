testing-initialization
test51InitializeWithFighterArmorClassAndSpeed

	self characterSheet initializeWith: #fighter.
	self assert: self characterSheet armorClass equals: '18'.
	self assert: self characterSheet speed equals: '9'.