selecting preset
chooseFileForCharacter

	| fileName |
	
	fileName := (StandardFileMenu oldFileFrom: FileDirectory default withPattern: '*.obj') name.
	^ fileName. 