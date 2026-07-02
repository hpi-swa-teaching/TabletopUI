testing
test16testNameListForClass

	self screen currentStep: #class.
	self assert: self screen nameList equals: (TTCharacterBuilderScreen options at: #class)