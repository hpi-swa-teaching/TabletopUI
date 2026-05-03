toolbuilder
createListSpecWith: aToolBuilder

	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #nameList;
		getIndex: #selectedIndex;
		setIndex: #selectedIndex:;
		doubleClick: #selectPreset;
		help: 'double click to change preset';
		yourself