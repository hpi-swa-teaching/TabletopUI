adding
addEntry: anObject forId: aId
	
	(self table includesKey: aId) ifTrue: [self error: 'Id was already in use.'].
	self table at: aId put: anObject.
	self objectToIdTable at: anObject put: aId.