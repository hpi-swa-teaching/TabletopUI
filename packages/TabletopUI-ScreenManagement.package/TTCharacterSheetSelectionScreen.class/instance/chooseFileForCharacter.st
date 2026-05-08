selecting preset
chooseFileForCharacter

	| fileName |
	
	fileName := (StandardFileMenu oldFileFrom: FileDirectory default) name.
	^ fileName. 