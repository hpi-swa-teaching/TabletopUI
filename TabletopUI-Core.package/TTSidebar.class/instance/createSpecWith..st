toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #imageNameList;
		getIndex: #selectedIndex;
		setIndex: #updateBackgroundForIndex:;
		yourself