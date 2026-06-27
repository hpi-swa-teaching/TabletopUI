selection management
removeDoubleClickedSelection

	(self getChoicesForCurrentStep at: (self getOptionsForCurrentStep at: self selectedIndex)) ~= 0
		ifTrue: [self getRemainingOptionsForCurrentStep add: (self getChoicesForCurrentStep at: (self getOptionsForCurrentStep at: self selectedIndex)).
			self getChoicesForCurrentStep at: (self getOptionsForCurrentStep at: self selectedIndex) put: 0]