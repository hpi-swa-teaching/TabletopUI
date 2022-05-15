money
gainPlatinum: aNumber
	
	| conversionRate |
	
	conversionRate := 0.1.
	self gold: self gold + (aNumber / conversionRate)