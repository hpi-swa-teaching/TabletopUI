as yet unclassified
isNameAlreadyUsed: aString

	^ (self players includes: aString) or: [self npcs includes: aString]