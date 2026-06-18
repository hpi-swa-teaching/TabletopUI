testing-initialization
test48InitializeWithWizard

	self characterSheet initializeWithPreset: #wizard.
	self assert: (self characterSheet baseValues at: #strength) equals: 8.
	self assert: (self characterSheet baseValues at: #intelligence) equals: 16.
	self assert: self characterSheet maxHP equals: '8'.
	self assert: self characterSheet currentHP equals: '8'.