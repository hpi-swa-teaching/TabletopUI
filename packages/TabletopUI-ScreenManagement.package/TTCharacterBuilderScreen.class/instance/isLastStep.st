screen management
isLastStep

	self currentStep = #abilities
		ifTrue: [^ true]
		ifFalse: [^ false]