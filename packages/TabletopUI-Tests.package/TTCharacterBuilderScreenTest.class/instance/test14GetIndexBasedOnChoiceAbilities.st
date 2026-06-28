testing
test14GetIndexBasedOnChoiceAbilities

	self screen currentStep: #abilities.
	self assert: self screen getIndexBasedOnChoice equals: 1