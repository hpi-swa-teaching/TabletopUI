accessing - saving throws
savingThrowsLookupAt: aSymbol put: anObject

	self savingThrowsLookup at: aSymbol put: (((anObject asNumber) max: 0) min: 1).
	self changesForSavingThrow: aSymbol