as yet unclassified
newWithMap: aMap inputField: aTTInputField
	
	^ self new
		map: aMap;
		inputField: aTTInputField;
		startPosition: 0@0;
		endPosition: 0@0;
		clickCounter: 0;
		yourself