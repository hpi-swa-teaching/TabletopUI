as yet unclassified
newWithMap: aMap
	
	^ self new
		map: aMap;
		startPosition: 0@0;
		endPosition: 0@0;
		clickCounter: 0;
		yourself