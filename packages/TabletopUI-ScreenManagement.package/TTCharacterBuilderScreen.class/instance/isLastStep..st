screen management
isLastStep: aSymbol

	self currentStep = #abilities
		ifTrue: [^ true]
		ifFalse: [^ false]