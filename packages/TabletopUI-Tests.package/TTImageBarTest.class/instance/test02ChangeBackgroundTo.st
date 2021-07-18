testing
test02ChangeBackgroundTo

	| img |
	
	img := self imageBar images at: (self imageBar imageNameList first).
	self deny: (self imageBar map submorphs anySatisfy: [:aMorph | aMorph = img]).
	self imageBar changeBackgroundTo: 1.
	self assert: (self imageBar map submorphs anySatisfy: [:aMorph | aMorph = img])