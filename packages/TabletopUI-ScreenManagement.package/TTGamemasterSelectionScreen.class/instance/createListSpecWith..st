toolbuilder
createListSpecWith: aToolBuilder

	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #nameList;
		getIndex: #selectedIndex;
		setIndex: #selectedIndex:;
		yourself