initialization
initialize

	super initialize.
	
	self 
		images: {} asDictionary;
		addStandardImages;
		imageNameList: (self images keys) asOrderedCollection;
		selectedIndex: 0