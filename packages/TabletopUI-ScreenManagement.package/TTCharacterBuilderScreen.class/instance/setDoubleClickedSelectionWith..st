selection management
setDoubleClickedSelectionWith: selection

	selection = 0 
		ifFalse: [(#(0 '0') includes: (self getRemainingOptionsForCurrentStep at: selection))
				ifTrue: [self removeDoubleClickedSelection]
				ifFalse: [
					self getChoicesForCurrentStep
						at: (self getOptionsForCurrentStep
							at: self selectedIndex) put: (self getRemainingOptionsForCurrentStep at: selection).
					self getRemainingOptionsForCurrentStep
						remove: (self getRemainingOptionsForCurrentStep at: selection)]]