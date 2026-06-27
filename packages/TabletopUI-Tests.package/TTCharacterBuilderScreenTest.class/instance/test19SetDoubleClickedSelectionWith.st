as yet unclassified
test19SetDoubleClickedSelectionWith

	| key |
	
	key := ((TTCharacterBuilderScreen options at: #abilities) at: 3).
	
	self screen currentStep: #abilities.
	self screen selectedIndex: 3.
	
	self screen setDoubleClickedSelectionWith: 3 at: #abilities.
	
	self deny: ((self screen remainingOptions at: #abilities) includes: ((self screen choices at: #abilities) at: key))
	