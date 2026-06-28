testing
test14GetIndexBasedOnChoiceAbilities

	self screen currentStep: #abilities.
	self assert: self screen indexBasedOnChoice equals: 1