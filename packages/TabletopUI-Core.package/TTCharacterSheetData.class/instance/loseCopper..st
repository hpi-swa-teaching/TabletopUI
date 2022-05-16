money
loseCopper: aNumber
	
	| conversionRate |
	
	aNumber < 0 ifFalse: [
		conversionRate := 100.
		self gold: self gold - (aNumber / conversionRate)]