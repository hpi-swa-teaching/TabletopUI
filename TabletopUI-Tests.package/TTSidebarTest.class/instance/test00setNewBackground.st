tests
test00setNewBackground
	
	| img |
	
	sidebar selectedIndex: 1.
	sidebar setNewBackground.
	img := sidebar images at: (sidebar imageNameList at: 1).
	self assert: (sidebar map submorphs anySatisfy: [:aMorph | aMorph = img])