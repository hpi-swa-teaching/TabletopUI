accessing
selectedIndex: aNumber

	(aNumber > 0) ifTrue: [
		selectedIndex := aNumber.
		(self currentStep = 5)
			ifFalse: [self choices at: self currentStep put: ((TTCharacterBuilderScreen options at: self currentStep) at: self selectedIndex)].
		self changed: #selectedIndex]