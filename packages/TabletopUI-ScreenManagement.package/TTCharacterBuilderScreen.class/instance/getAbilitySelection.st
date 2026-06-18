as yet unclassified
getAbilitySelection

	| selection remainingValues |
	
	remainingValues := self remainingNumbers collect: [ :value |
		value = 0 ifTrue: ['Remove my choice'] ifFalse: [value]].
	
	selection := UIManager default
		chooseFrom: remainingValues
		title: ('Please choose your value for ', (((TTCharacterBuilderScreen options) at: 5) at: self selectedIndex)).
		
	^ selection