selection management
doubleClicked

	(#(#cantrips #spells #abilities) includes: self currentStep)
		ifTrue: [self setDoubleClickedSelection]