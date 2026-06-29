as yet unclassified
test02WrongElementAccess

	self referenceManager addEntry: self referenceManager forId: 'ref'.
	self assert: ((self referenceManager resolve: 'a') isNil).