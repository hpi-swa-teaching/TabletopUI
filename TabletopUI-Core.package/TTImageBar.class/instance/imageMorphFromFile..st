imageLoading
imageMorphFromFile: aString
	
	^ ImageMorph new newForm: (
		GMImageLoader new resourceFromDrive: aString)