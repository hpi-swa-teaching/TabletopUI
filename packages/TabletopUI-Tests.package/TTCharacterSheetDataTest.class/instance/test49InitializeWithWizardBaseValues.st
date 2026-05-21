testing-initialization
test49InitializeWithWizardBaseValues

	self characterSheet initializeWith: #wizard.
	self assert: (self characterSheet baseValues at: #strength) equals: 8.
	self assert: (self characterSheet baseValues at: #intelligence) equals: 16.