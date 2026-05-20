accessing
saveCharacter: aSmallInteger

	| fileStream stream |
	
	fileStream := (FileStream newFileNamed: (self players at: aSmallInteger) name, '.obj') binary.
	stream := ReferenceStream on: fileStream.
	stream nextPut: (self players at: aSmallInteger) sheet.
	stream close
	