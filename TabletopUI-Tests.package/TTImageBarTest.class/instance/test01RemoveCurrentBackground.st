testing
test01RemoveCurrentBackground
	
	self imageBar 
		selectedIndex: 1;
		setNewBackground;
		removeCurrentBackground.
	self deny: (self imageBar map submorphs anySatisfy: [:aMorph | 
		aMorph = (self imageBar images at: self imageBar imageNameList first)])