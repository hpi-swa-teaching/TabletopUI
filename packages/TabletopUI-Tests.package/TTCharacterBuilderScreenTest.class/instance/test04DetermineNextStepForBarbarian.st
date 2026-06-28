testing
test04DetermineNextStepForBarbarian

	self screen currentStep: #class.
	self assert: self screen determineNextStep equals: #race