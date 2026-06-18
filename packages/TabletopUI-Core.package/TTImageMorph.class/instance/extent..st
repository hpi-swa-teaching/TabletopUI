getter/setter
extent: anExtent
	
	self image: (self scaleToSize: anExtent).
	super extent: anExtent.
