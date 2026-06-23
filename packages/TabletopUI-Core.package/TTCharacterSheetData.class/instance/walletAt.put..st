accessing - money
walletAt: aSymbol put: aNumber

	self wallet at: aSymbol put: (aNumber max: 0).
	self changed: aSymbol
	