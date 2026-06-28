image loading
createImageFromFileNamed: aString
	
	^ (TTImageMorph new newForm: (TTImageLoader loadFormFromFileNamed: aString) ) extent: self defaultImageExtent