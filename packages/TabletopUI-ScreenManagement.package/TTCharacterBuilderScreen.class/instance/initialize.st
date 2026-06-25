as yet unclassified
initialize

	super initialize.
	
	self currentStep: #class.
	
	self choices: Dictionary new.
	self initializeChoices.
	self initializeRemainingOptions.
	self selectedIndex: 1
	
	