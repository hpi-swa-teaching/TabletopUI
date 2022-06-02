money
gainSilver: aNumber
	
	| conversionRate |
	
	aNumber < 0 ifFalse: [
		conversionRate := 10.
		self gold: self gold + (aNumber / conversionRate)]