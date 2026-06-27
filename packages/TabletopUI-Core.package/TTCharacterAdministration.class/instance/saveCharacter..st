accessing
saveCharacter: aPlayerIndex

	| player fileStream stream |
	
	player := self players at: aPlayerIndex.
	fileStream := (FileStream newFileNamed: player name, '.obj') binary.
	stream := ReferenceStream on: fileStream.
	[ stream nextPut: player sheet ]
		ensure: [ stream close ]