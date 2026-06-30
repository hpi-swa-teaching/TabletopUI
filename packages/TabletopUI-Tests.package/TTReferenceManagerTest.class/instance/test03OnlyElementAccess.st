testing
test03OnlyElementAccess

	self referenceManager addEntry: self referenceManager forId: 'reef'.
	
	self assert: self referenceManager = (self referenceManager resolve: 'reef')