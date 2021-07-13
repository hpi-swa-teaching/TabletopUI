toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableListSpec new
		model: self;
		minimumWidth: 0;
		list: #nameList;
		getIndex: #selectedIndex;
		setIndex: #selectedIndex:;
		yourself