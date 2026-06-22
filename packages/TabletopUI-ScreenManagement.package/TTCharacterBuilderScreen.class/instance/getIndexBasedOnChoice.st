as yet unclassified
getIndexBasedOnChoice

	(self currentStep = #abilities)
		ifFalse: [ ^ (TTCharacterBuilderScreen options at: self currentStep) indexOf: (self choices at: self currentStep)].
	^ 1