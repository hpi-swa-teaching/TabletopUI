accessing
saveToken: aSmallInteger

	| sourcePath fileName targetDirectory targetPath inputStream outputStream |
	
	sourcePath := (self players at: aSmallInteger) token.
	fileName := 'Token_Player_', (self players at: aSmallInteger) name, '.png'.
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
	        outputStream close.
	    ].