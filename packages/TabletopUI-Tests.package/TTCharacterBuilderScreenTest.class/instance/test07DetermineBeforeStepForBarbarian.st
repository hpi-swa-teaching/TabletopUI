testing
test07DetermineBeforeStepForBarbarian

	self screen currentStep: #race.
	self assert: self screen determineBeforeStep equals: #class