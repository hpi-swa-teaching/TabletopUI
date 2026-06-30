testing
test02WrongElementAccess

	| crashes |
	crashes := false.
	self referenceManager addEntry: self referenceManager forId: 'ref'.
	
	[self referenceManager resolve: 'a'] on: Error do: [crashes := true].
	
	self assert: crashes