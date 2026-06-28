accessing
nameList
	
	(#(#abilities #cantrips #spells) includes: self currentStep)
		ifFalse: [^ self optionsForCurrentStep]
		ifTrue: [^ self nameListWithDoubleClickOptions]