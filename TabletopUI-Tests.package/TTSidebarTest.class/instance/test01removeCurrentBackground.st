tests
test01removeCurrentBackground
	
	| img |
	
	sidebar selectedIndex: 1.
	sidebar setNewBackground.
	sidebar removeCurrentBackground.
	img := sidebar images at: (sidebar imageNameList at: 1).
	self deny: (sidebar map submorphs anySatisfy: [:aMorph | aMorph = img])