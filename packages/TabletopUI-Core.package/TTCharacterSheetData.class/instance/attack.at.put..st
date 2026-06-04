accessing - attacks
attack: aNumber at: aSymbol put: anObject

	(self attacks at: aNumber) at: aSymbol put: anObject asString.
	self changed: ('attack' , aNumber asString , aSymbol asString capitalized) asSymbol