image loading
createImageFromFileNamed: aString
	
	^ ImageMorph new newForm: (TTImageLoader loadFormFromFileNamed: aString)