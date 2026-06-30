adding
addEntry: anObject forId: aId
	
	self table at: aId put: anObject.
	self objectToIdTable at: anObject put: aId.