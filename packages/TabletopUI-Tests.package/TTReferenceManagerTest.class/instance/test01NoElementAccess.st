testing
test01NoElementAccess

	| crashes |
	crashes := false.
	
	[self referenceManager resolve: 'test'] on: Error do: [crashes := true].
	
	self assert: crashes