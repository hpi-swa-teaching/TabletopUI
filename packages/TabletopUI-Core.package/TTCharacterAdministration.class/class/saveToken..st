saving
saveToken: aPlayer

	| sourcePath fileName targetDirectory targetPath inputStream outputStream |
	sourcePath := aPlayer token.
	fileName := 'Token_Player_', aPlayer name, '.png'.
	targetDirectory := FileDirectory default.
	targetDirectory assureExistence.
	targetPath := targetDirectory fullNameFor: fileName.
	inputStream := FileStream readOnlyFileNamed: sourcePath.
	inputStream binary. 
	outputStream := FileStream newFileNamed: targetPath.
	outputStream binary.
	[ outputStream nextPutAll: inputStream contentsOfEntireFile ] 
	    ensure: [ 
	        inputStream close.
	        outputStream close ]