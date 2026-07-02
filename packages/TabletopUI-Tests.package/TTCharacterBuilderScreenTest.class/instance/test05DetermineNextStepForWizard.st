testing
test05DetermineNextStepForWizard

	self screen currentStep: #class.
	self screen choices at: self screen currentStep put: #wizard.
	self assert: self screen determineNextStep equals: #cantrips