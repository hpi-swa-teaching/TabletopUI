testing
test06DetermineBeforeStepForWizard

	self screen currentStep: #race.
	self screen choices at: #class put: #wizard.
	self assert: self screen determineBeforeStep equals: #spells