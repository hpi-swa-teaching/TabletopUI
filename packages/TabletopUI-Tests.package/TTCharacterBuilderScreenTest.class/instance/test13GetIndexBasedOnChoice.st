testing
test13GetIndexBasedOnChoice

	self screen currentStep: #class.
	self screen choices at: self screen currentStep put: #wizard.
	self assert: self screen getIndexBasedOnChoice equals: ((TTCharacterBuilderScreen options at: #class) indexOf: #wizard)