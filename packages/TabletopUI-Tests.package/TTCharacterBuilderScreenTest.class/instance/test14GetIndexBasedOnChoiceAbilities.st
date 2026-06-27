as yet unclassified
test14GetIndexBasedOnChoiceAbilities

	self screen currentStep: #abilities.
	self assert: self screen getIndexBasedOnChoice equals: 1