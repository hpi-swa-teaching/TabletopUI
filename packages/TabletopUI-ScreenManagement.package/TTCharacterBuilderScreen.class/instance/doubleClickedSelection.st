accessing
doubleClickedSelection

	| selection remainingValues |
	remainingValues := self remainingOptionsForCurrentStep collect: [ :value |
		(#(0 '0') includes: value) ifTrue: ['Remove my choice'] ifFalse: [value]].
	selection := UIManager default
		chooseFrom: remainingValues
		title: ('Please choose your value for ', (self optionsForCurrentStep at: self selectedIndex)).
	^ selection