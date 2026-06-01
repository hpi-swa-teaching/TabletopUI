as yet unclassified
continue
	
	(self currentStep < (TTCharacterBuilderScreen options) size)
		ifTrue: [
			currentStep := currentStep + 1.
			self changed: #nameList]
		ifFalse: [self window openCharacterSheetSelectionScreen]