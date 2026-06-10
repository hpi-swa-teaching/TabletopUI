as yet unclassified
leave
	
	(self currentStep > 1)
		ifTrue: [
			currentStep := currentStep - 1.
			self changed: #nameList.
			self selectedIndex: self getIndexBasedOnChoice]
		ifFalse: [self abortCharacterBuilding]