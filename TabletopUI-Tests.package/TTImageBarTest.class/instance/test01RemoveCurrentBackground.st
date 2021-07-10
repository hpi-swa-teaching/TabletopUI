testing
test01RemoveCurrentBackground
	
	| img |
	
	self imageBar selectedIndex: 1.
	self imageBar setNewBackground.
	self imageBar removeCurrentBackground.
	img := self imageBar images at: (self imageBar imageNameList first).
	self deny: (self imageBar map submorphs anySatisfy: [:aMorph | aMorph = img])