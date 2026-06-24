as yet unclassified
isLastStep: aSymbol

	self currentStep = #abilities
		ifTrue: [^ true]
		ifFalse: [^ false]