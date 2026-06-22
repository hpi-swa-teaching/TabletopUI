as yet unclassified
getDoubleClickedSelectionFor: aStep

	| selection remainingValues |
	remainingValues := (self remainingOptions at: aStep) collect: [ :value |
		(#(0 '0') includes: value) ifTrue: ['Remove my choice'] ifFalse: [value]].
	selection := UIManager default
		chooseFrom: remainingValues
		title: ('Please choose your value for ', (((TTCharacterBuilderScreen options) at: aStep) at: self selectedIndex)).
	^ selection