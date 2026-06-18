rules - money
gain: aNumber of: aSymbol

	| current |
	(aNumber < 0) ifTrue: [^ self].
	current := self wallet at: aSymbol.
	self walletAt: aSymbol put: (current + aNumber)