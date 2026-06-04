as yet unclassified
test01NoElementAccess

	| referenceManager crashes |
	crashes := false.
	referenceManager := TTReferenceManager new.
	
	[referenceManager resolve: 'test'] on: Error do: [crashes := true].
	
	self assert: crashes