money
loseElectrum: aNumber
	
	| conversionRate |
	
	aNumber < 0 ifFalse: [
		conversionRate := 2.
		self gold: self gold - (aNumber / conversionRate)]