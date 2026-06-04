accessing - saving throws
savingThrowsLookupAt: aSymbol put: anObject

	self savingThrowsLookup at: aSymbol.
	self changesForSavingThrow: (aSymbol , 'SavingThrow') asSymbol