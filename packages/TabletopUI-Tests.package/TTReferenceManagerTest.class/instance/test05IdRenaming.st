as yet unclassified
test05IdRenaming

	|newId oldId anObject|
	anObject:= 1.
	oldId:= 'password'.
	newId:= 'password#'.
	self referenceManager addEntry: anObject forId: oldId.
	self referenceManager renameIdOf: anObject To: newId.

	self assert: ((self referenceManager resolve: newId) = anObject).
	self deny: (self referenceManager table includesKey: oldId).

	