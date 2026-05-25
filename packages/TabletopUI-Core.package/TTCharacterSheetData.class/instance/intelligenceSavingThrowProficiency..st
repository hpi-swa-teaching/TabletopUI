accessing - saving throws
intelligenceSavingThrowProficiency: aNumber
	
	self savingThrowsLookup at: #intelligence put: aNumber.
	self changesForSavingThrow: #intelligenceSavingThrow
	