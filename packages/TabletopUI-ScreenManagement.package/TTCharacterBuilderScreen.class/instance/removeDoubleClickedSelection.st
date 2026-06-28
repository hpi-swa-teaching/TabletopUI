selection management
removeDoubleClickedSelection

	(self choicesForCurrentStep at: (self optionsForCurrentStep at: self selectedIndex)) ~= 0
		ifTrue: [self remainingOptionsForCurrentStep add: (self choicesForCurrentStep at: (self optionsForCurrentStep at: self selectedIndex)).
			self choicesForCurrentStep at: (self optionsForCurrentStep at: self selectedIndex) put: 0]