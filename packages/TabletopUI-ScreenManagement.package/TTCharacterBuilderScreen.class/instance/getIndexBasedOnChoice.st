as yet unclassified
getIndexBasedOnChoice

	(self currentStep = 5)
		ifFalse: [ ^ (TTCharacterBuilderScreen options at: self currentStep) indexOf: (self choices at: self currentStep)].
	^ 1