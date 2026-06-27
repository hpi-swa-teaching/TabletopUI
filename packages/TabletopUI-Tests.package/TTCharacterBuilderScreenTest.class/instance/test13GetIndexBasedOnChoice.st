as yet unclassified
test13GetIndexBasedOnChoice

	self screen currentStep: #class.
	self screen choices at: #class put: #wizard.
	self assert: self screen getIndexBasedOnChoice equals: ((TTCharacterBuilderScreen options at: #class) indexOf: #wizard)