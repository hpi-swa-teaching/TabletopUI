accessing - saving throws
wisdomSavingThrowProficiency: aNumber
	
	self savingThrowsLookup at: #wisdom put: aNumber.
	self changesForSavingThrow: #wisdomSavingThrow
	