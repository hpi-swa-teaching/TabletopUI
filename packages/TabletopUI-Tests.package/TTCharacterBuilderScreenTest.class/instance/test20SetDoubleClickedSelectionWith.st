testing
test20SetDoubleClickedSelectionWith

	| key |
	self screen currentStep: #abilities.
	key := (self screen optionsForCurrentStep at: 3).
	self screen selectedIndex: 3.
	
	self screen setDoubleClickedSelectionWith: 3.
	
	self deny: (self screen remainingOptionsForCurrentStep includes: (self screen choicesForCurrentStep at: key))