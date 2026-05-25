accessing - saving throws
constitutionSavingThrowProficiency: aNumber
	
	self savingThrowsLookup at: #constitution put: aNumber.
	self changesForSavingThrow: #constitutionSavingThrow
	