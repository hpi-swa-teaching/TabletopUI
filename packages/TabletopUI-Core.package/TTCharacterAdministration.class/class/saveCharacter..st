saving
saveCharacter: aPlayer

	| fileStream stream |
	
	fileStream := (FileStream newFileNamed: aPlayer name, '.obj') binary.
	stream := ReferenceStream on: fileStream.
	[ stream nextPut: aPlayer sheet ]
		ensure: [ stream close ]