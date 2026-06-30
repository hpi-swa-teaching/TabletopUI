testing
test04ArbitraryElementAccess

	| refManager crashes |
	crashes := false.
	refManager := TTReferenceManager new.
	refManager addEntry: 6 forId: 7.
	refManager addEntry: refManager forId: 1.
	refManager addEntry: crashes forId: crashes.
	
	self assert: refManager = (refManager resolve: 1).
	self assert: crashes = (refManager resolve: crashes).
	self assert: 6 = (refManager resolve: 7)