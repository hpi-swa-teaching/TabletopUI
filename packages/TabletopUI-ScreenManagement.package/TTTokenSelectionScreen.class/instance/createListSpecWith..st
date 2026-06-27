toolbuilder
createListSpecWith: aToolBuilder

	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #nameList;
		getIndex: #selectedIndex;
		setIndex: #selectedIndex:;
		doubleClick: #selectToken;
		help: 'double click to change token';
		yourself