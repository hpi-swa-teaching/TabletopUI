money
gainPlatinum: aNumber
	
	| conversionRate |
	
	aNumber < 0 ifFalse: [
		conversionRate := 0.1.
		self gold: self gold + (aNumber / conversionRate)]