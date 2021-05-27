toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #nameList;
		getIndex: #index;
		selectedIndex: #selectedIndex:;
		yourself