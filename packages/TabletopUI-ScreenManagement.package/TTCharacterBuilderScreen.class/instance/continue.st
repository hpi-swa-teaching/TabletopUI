as yet unclassified
continue
	
	(self currentStep < (TTCharacterBuilderScreen options) size)
		ifTrue: [
			currentStep := currentStep + 1.
			self changed: #nameList.
			self selectedIndex: 1]
		ifFalse: [self window openCharacterSheetSelectionScreen]