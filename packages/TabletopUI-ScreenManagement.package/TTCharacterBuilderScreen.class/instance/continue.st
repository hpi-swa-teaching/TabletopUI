screen management
continue
	
	(self currentStep = #abilities)
		ifTrue: [self allAbilitiesSelected 
			ifFalse: [UIManager default inform: 'Please select a value for every ability.'. 
				^ self]].
	
	self isLastStep
		ifFalse: [
			self currentStep: self determineNextStep.
			self changed: #nameList.
			self selectedIndex: self indexBasedOnChoice]
		ifTrue: [self createSheet. 
			self window openCharacterSheetSelectionScreenWith: self selectedPresets]