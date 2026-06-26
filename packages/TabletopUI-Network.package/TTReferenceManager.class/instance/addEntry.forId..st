adding
addEntry: anObject forId: aId
	
	aId = 'chat' ifTrue:[self halt].
	self table at: aId put: anObject.
	self objectToIdTable at: anObject put: aId.