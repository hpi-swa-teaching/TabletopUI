testing
test18RemoveDoubleClickedSelectionFor

	| key value |
	
	key := ((TTCharacterBuilderScreen options at: #abilities) first).
	value := 15.

	self screen currentStep: #abilities.
	self screen selectedIndex: 1.
	
	self screen getChoicesForCurrentStep at: key put: value.
	self screen getRemainingOptionsForCurrentStep remove: value.
	
	self screen removeDoubleClickedSelection.
	self assert: ((self screen choices at: #abilities) at: key) equals: 0.
	self assert: (self screen getRemainingOptionsForCurrentStep includes: value)
	