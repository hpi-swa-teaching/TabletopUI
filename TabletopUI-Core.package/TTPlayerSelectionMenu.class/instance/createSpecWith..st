as yet unclassified
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #nameList;
		getIndex: #selectedIndex;
		setIndex: #selectedIndex:;
		yourself