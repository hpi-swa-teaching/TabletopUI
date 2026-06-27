as yet unclassified
test05DetermineNextStepForWizard

	self screen currentStep: #class.
	self screen choices at: #class put: #wizard.
	self assert: self screen determineNextStep equals: #cantrips