as yet unclassified
newWithMap: aMap inputField: aTTInputField
	
	^self new
		map: aMap;
		inputField: aTTInputField;
		mouseIsDown: false;
		distance: 0;
		aboutToBeClosed: false;
		yourself