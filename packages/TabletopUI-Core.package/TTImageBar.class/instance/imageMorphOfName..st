imageLoading
imageMorphOfName: aString
	
	^ ImageMorph new newForm: (TTImageLoader loadFormOfName: aString)