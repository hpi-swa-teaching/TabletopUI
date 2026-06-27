accessing
saveToken: aPlayerIndex

	| player sourcePath fileName targetDirectory targetPath inputStream outputStream |
	player :=  self players at: aPlayerIndex.
	sourcePath := player token.
	fileName := 'Token_Player_', player name, '.png'.
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