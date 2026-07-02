accessing
indexBasedOnChoice

	(self currentStep = #abilities)
		ifFalse: [ ^ self optionsForCurrentStep indexOf: self choicesForCurrentStep].
	^ 1