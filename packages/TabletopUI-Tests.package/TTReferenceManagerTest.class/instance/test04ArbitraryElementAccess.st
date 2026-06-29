testing
test04ArbitraryElementAccess

	| referenceManager crashes |
	crashes := false.
	referenceManager := TTReferenceManager new.
	referenceManager addEntry: 6 forId: 7.
	referenceManager addEntry: referenceManager forId: 1.
	referenceManager addEntry: crashes forId: crashes.
	
	self assert: referenceManager = (referenceManager resolve: 1).
	self assert: crashes = (referenceManager resolve: crashes).
	self assert: 6 = (referenceManager resolve: 7)