testing
test01NoElementAccess

	| id |
	id := self randomInt.
	
	self assert: (self referenceManager resolve: id) isNil