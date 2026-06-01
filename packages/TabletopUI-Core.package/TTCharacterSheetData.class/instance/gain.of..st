accessing - money
gain: aNumber of: aSymbol

	| current |
	current := self wallet at: aSymbol.
	self wallet at: aSymbol put: (current + aNumber)