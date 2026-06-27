initialize-release
initialize
	
	self currentStep: #class.
	
	self choices: Dictionary new.
	self initializeChoices.
	self initializeRemainingOptions.
	
	super initialize