accessing
selectedIndex: aNumber

	(aNumber > 0) 
		ifTrue: [selectedIndex := aNumber.
			(#(#abilities #cantrips #spells) includes: self currentStep)
				ifFalse: [self choices at: self currentStep put: (self getOptionsForCurrentStep at: self selectedIndex)].
			(self currentStep = #class) 
				ifTrue: [self remainingOptions at: #cantrips put: (self class cantrips at: (self getOptionsForCurrentStep at: self selectedIndex)).
					self remainingOptions at: #spells put: (self class spellsLevel1 at: (self getOptionsForCurrentStep at: self selectedIndex))].
			self changed: #selectedIndex]