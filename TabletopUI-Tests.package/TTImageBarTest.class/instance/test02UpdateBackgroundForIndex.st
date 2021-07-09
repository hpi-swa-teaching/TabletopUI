testing
test02UpdateBackgroundForIndex

	| img |
	
	self imageBar changeBackgroundTo: 1.
	img := self imageBar images at: (self imageBar imageNameList first).
	self assert: (self imageBar map submorphs anySatisfy: [:aMorph | aMorph = img]).
	self imageBar changeBackgroundTo: 2.
	self deny: (self imageBar map submorphs anySatisfy: [:aMorph | aMorph = img]).
	img := self imageBar images at: (self imageBar imageNameList second).
	self assert: (self imageBar map submorphs anySatisfy: [:aMorph | aMorph = img]).