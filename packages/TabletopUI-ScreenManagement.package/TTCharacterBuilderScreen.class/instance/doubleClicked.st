as yet unclassified
doubleClicked

	(#(#cantrips #spells #abilities) includes: self currentStep)
		ifTrue: [self setDoubleClickedSelectionFor: self currentStep]