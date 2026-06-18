accessing - saving throws
savingThrowsLookupAt: aSymbol put: anObject

	self savingThrowsLookup at: aSymbol put: anObject.
	self changesForSavingThrow: aSymbol