util
scaleToSize: numberOrPoint

	| scaleX scaleY newExtent |
	newExtent := numberOrPoint asPoint.
	
	newExtent = self image extent ifTrue: [^ self image copy].
	
	(self image height isZero or: [self image width isZero])
		ifTrue: [^ self image species extent: newExtent depth: self image depth].
		
	scaleX := newExtent x / self image width.
	scaleY := newExtent y / self image height.
	^ self image magnify: self image boundingBox by: (scaleX@scaleY) smoothing: 2.