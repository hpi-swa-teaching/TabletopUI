money
gainCopper: aNumber
	
	| conversionRate |
	
	conversionRate := 100.
	self gold: self gold + (aNumber / conversionRate)