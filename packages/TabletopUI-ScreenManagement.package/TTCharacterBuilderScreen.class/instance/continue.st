as yet unclassified
continue
	
	(self currentStep = 5)
		ifTrue: [self allAbilitiesSelected 
			ifFalse: [UIManager default inform: 'Please select a value for every ability.'. 
				^ self]].
	(self currentStep < (TTCharacterBuilderScreen options) size)
		ifTrue: [
			currentStep := currentStep + 1.
			self changed: #nameList.
			self selectedIndex: self getIndexBasedOnChoice]
		ifFalse: [self createSheet. 
			self window openCharacterSheetSelectionScreenWith: selectedPresets]