testing
test08SelectedIndexStoresSelectedClass

	self screen currentStep: #class.
	self screen selectedIndex: 3.
	self assert: (self screen choicesForCurrentStep) equals: ((TTCharacterBuilderScreen options at: #class) at: self screen selectedIndex)