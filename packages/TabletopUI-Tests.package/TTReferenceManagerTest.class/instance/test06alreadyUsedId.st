testing
test06alreadyUsedId

	|id anObject|
	anObject:= 1.
	id := 'password'.
	self referenceManager addEntry: anObject forId: id.
	self should: [ self referenceManager addEntry: anObject forId: id ] raise: Error.
	

	