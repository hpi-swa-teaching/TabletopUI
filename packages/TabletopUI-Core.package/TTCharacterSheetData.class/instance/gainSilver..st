money
gainSilver: aNumber
	
	| conversionRate |
	
	conversionRate := 10.
	self gold: self gold + (aNumber / conversionRate)