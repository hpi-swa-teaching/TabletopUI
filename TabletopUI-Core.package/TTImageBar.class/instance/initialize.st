initialization
initialize

	super initialize.
	
	self 
		images: {} asDictionary;
		addStandardImages;
		selectedIndex: 0