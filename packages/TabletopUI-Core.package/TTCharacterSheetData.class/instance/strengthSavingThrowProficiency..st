accessing - saving throws
strengthSavingThrowProficiency: aNumber
	
	self savingThrowsLookup at: #strength put: aNumber.
	self changesForSavingThrow: #strengthSavingThrow
	