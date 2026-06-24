accessing
selectedIndex: aNumber

	(aNumber > 0) ifTrue: [selectedIndex := aNumber.
		(#(#abilities #cantrips #spells) includes: self currentStep)
			ifFalse: [self choices at: self currentStep put: ((TTCharacterBuilderScreen options at: self currentStep) at: self selectedIndex)].
		(self currentStep = #class) 
			ifTrue: [
				self remainingOptions at: #cantrips put: (TTCharacterBuilderScreen cantrips at: ((TTCharacterBuilderScreen options at: self currentStep) at: self selectedIndex)).
				self remainingOptions at: #spells put: (TTCharacterBuilderScreen spellsLevel1 at: ((TTCharacterBuilderScreen options at: self currentStep) at: self selectedIndex))].
		self changed: #selectedIndex]