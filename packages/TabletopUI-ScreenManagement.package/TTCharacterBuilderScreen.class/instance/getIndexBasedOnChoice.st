as yet unclassified
getIndexBasedOnChoice

	(self currentStep = #abilities)
		ifFalse: [ ^ self getOptionsForCurrentStep indexOf: self getChoicesForCurrentStep].
	^ 1