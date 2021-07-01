toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #imageNameList;
		minimumWidth: 0;
		getIndex: #selectedIndex;
		setIndex: #updateBackgroundForIndex:;
		yourself