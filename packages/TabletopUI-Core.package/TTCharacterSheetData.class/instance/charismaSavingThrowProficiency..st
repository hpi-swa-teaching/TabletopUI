accessing - saving throws
charismaSavingThrowProficiency: aNumber
	
	self savingThrowsLookup at: #charisma put: aNumber.
	self changesForSavingThrow: #charismaSavingThrow
	