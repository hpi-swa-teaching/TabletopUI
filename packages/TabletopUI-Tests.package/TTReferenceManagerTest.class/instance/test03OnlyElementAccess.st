testing
test03OnlyElementAccess

	| crashes |
	crashes := false.
	self referenceManager addEntry: self referenceManager forId: 'reef'.
	
	self assert: self referenceManager = (self referenceManager resolve: 'reef')