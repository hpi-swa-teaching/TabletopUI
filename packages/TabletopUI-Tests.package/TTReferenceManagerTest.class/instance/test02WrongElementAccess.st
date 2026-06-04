as yet unclassified
test02WrongElementAccess

	| referenceManager crashes |
	crashes := false.
	referenceManager := TTReferenceManager new.
	referenceManager addEntry: referenceManager forId: 'ref'.
	
	[referenceManager resolve: 'a'] on: Error do: [crashes := true].
	
	self assert: crashes