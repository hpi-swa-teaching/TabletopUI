rules - money
gain: aNumber of: aSymbol

	| current |
	current := self wallet at: aSymbol.
	self walletAt: aSymbol put: (current + aNumber)