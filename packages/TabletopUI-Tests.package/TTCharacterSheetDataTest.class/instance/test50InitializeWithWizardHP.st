testing-initialization
test50InitializeWithWizardHP

	self characterSheet initializeWith: #wizard.
	self assert: self characterSheet maxHP equals: '8'.
	self assert: self characterSheet currentHP equals: '8'.