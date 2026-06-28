selection management
setDoubleClickedSelectionWith: selection

	selection = 0 
		ifFalse: [(#(0 '0') includes: (self remainingOptionsForCurrentStep at: selection))
				ifTrue: [self removeDoubleClickedSelection]
				ifFalse: [
					self choicesForCurrentStep
						at: (self optionsForCurrentStep
							at: self selectedIndex) put: (self remainingOptionsForCurrentStep at: selection).
					self remainingOptionsForCurrentStep
						remove: (self remainingOptionsForCurrentStep at: selection)]]