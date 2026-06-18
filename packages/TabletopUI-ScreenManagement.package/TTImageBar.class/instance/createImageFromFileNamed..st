image loading
createImageFromFileNamed: aString
	
	^ (TTImageMorph new newForm: (TTImageLoader loadFormFromFileNamed: aString) ) extent: (1200px @ 850px)