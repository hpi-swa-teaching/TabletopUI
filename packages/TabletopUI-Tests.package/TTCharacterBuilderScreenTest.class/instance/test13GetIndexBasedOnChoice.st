testing
test13GetIndexBasedOnChoice

	self screen currentStep: #class.
	self screen choices at: self screen currentStep put: #wizard.
	self assert: self screen indexBasedOnChoice equals: ((TTCharacterBuilderScreen options at: #class) indexOf: #wizard)