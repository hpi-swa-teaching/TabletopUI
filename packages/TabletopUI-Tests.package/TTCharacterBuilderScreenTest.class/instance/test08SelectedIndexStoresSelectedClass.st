as yet unclassified
test08SelectedIndexStoresSelectedClass

	self screen currentStep: #class.
	self screen selectedIndex: 3.
	self assert: (self screen choices at: #class) equals: ((TTCharacterBuilderScreen options at: #class) at: self screen selectedIndex)