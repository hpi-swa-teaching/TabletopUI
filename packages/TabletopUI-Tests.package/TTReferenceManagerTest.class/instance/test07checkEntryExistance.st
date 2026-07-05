testing
test07checkEntryExistance

	| id anObject |
	anObject := 1.
	id := 'password'.
	self deny: (self referenceManager hasEntry: id).
	self referenceManager addEntry: anObject forId: id.
	self assert: (self referenceManager hasEntry: id)