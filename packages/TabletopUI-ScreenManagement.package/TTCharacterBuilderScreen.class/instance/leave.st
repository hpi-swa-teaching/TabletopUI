screen management
leave
	
	(self currentStep ~= #class)
		ifTrue: [
			self currentStep: self determineBeforeStep.
			self changed: #nameList.
			self selectedIndex: self indexBasedOnChoice]
		ifFalse: [self abortCharacterBuilding]