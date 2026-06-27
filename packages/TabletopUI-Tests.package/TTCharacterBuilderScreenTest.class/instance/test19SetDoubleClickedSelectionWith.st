as yet unclassified
test19SetDoubleClickedSelectionWith

	| key |
	
	self screen currentStep: #abilities.
	key := (self screen getOptionsForCurrentStep at: 3).
	self screen selectedIndex: 3.
	
	self screen setDoubleClickedSelectionWith: 3.
	
	self deny: (self screen getRemainingOptionsForCurrentStep includes: (self screen getChoicesForCurrentStep at: key))