accessing
saveCharacter: aSmallInteger

	| stream |
	
	stream := SmartRefStream fileNamed: (self players at: aSmallInteger) name, '.obj'.
	stream nextPut: (self players at: aSmallInteger) sheet.
	stream close
	