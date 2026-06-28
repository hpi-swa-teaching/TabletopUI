testing
test15IsNotLastStep

	self screen currentStep: #class.
	self deny: (self screen isLastStep: self screen currentStep)