toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableListSpec new
		model: self;
		minimumWidth: 0;
		list: #nameList;
		getIndex: #selectedIndex;
		setIndex: #selectedIndex:;
		doubleClick: #saveCharacter;
		help: 'double click to save character';
		yourself