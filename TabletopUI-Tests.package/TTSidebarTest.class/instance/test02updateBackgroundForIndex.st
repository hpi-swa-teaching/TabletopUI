tests
test02updateBackgroundForIndex

	| img |
	
	sidebar updateBackgroundForIndex: 1.
	img := sidebar images at: (sidebar imageNameList at: 1).
	self assert: (sidebar map submorphs anySatisfy: [:aMorph | aMorph = img]).
	
	sidebar updateBackgroundForIndex: 2.
	self deny: (sidebar map submorphs anySatisfy: [:aMorph | aMorph = img]).
	img := sidebar images at: (sidebar imageNameList at: 2).
	self assert: (sidebar map submorphs anySatisfy: [:aMorph | aMorph = img]).