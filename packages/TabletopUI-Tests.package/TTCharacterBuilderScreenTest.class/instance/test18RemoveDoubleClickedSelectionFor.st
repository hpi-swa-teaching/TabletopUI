as yet unclassified
test18RemoveDoubleClickedSelectionFor

	| key value |
	
	key := ((TTCharacterBuilderScreen options at: #abilities) at: 1).
	value := 15.

	self screen currentStep: #abilities.
	self screen selectedIndex: 1.
	
	(self screen choices at: #abilities) at: key put: value.
	(self screen remainingOptions at: #abilities) remove: value.
	
	self screen removeDoubleClickedSelectionFor: #abilities.
	self assert: ((self screen choices at: #abilities) at: key) equals: 0.
	self assert: ((self screen remainingOptions at: #abilities) includes: value)
	