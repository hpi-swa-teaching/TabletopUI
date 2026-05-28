forms
customizedPlayerFormWith: aFilePath

	| form |
	
	form := Form fromFileNamed: aFilePath.
	form := form scaledToSize: 50@50.
	
	^ form