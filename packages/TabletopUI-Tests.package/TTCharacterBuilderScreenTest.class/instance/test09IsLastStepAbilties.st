as yet unclassified
test09IsLastStepAbilties

	self screen currentStep: #abilities.
	self assert: (self screen isLastStep: self screen currentStep)