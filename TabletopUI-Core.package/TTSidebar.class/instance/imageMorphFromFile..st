imageLoading
imageMorphFromFile: aString

	| form |
	
	form := GMImageLoader new resourceFromDrive: aString.
	^ ImageMorph new newForm: form