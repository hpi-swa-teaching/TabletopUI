as yet unclassified
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableDropDownListSpec new
		model: self;
		listSelector: #nameList;
		selectionSelector: #selectedIndex;
		selectionSetter: #selectedIndex:;
		yourself