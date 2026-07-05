testing
test04ArbitraryElementAccess

	self runRandomizedTest: [ | refManager crashes id object |
		id := self randomInt.
		object := self randomInt.
		crashes := false.
		refManager := TTReferenceManager new.
		refManager addEntry: id forId: object.
		refManager addEntry: refManager forId: 1.
		refManager addEntry: crashes forId: crashes.
		
		self assert: refManager = (refManager resolve: 1).
		self assert: crashes = (refManager resolve: crashes).
		self assert: id = (refManager resolve: object)]