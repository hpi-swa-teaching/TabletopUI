as yet unclassified
getIndexBasedOnChoice

	(self currentStep = 3)
		ifFalse: [ ^ (TTCharacterBuilderScreen options at: self currentStep) indexOf: (self choices at: self currentStep)].
	^ 1