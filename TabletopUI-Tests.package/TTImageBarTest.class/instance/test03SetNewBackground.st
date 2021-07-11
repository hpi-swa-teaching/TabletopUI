testing
test03SetNewBackground
	
	| img |
	
	self imageBar 
		selectedIndex: 1;
		setNewBackground.
	img := self imageBar images at: (self imageBar imageNameList first).
	self assert: (self imageBar map submorphs anySatisfy: [:aMorph | aMorph = img])