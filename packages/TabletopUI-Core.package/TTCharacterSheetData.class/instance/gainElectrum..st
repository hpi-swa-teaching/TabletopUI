money
gainElectrum: aNumber
	
	| conversionRate |
	
	conversionRate := 2.
	self gold: self gold + (aNumber / conversionRate)