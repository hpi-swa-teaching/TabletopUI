as yet unclassified
initialize

	super initialize.
	
	self currentStep: 1.
	
	self choices: Dictionary new.
	self initializeChoices.
	self selectedIndex: 1.
	self remainingNumbers: {8. 10. 12. 13. 14. 15. 0} asSortedCollection
	
	