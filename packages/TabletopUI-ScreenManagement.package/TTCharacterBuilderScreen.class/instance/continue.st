as yet unclassified
continue
	
	(self currentStep = #abilities)
		ifTrue: [self allAbilitiesSelected 
			ifFalse: [UIManager default inform: 'Please select a value for every ability.'. 
				^ self]].
	(self isLastStep: self currentStep)
		ifFalse: [
			self currentStep: self determineNextStep.
			self changed: #nameList.
			self selectedIndex: self getIndexBasedOnChoice]
		ifTrue: [self createSheet. 
			self window openCharacterSheetSelectionScreenWith: self selectedPresets]