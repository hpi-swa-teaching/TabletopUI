wrapping
ifContainsRemove: anId

	(self networkmanager referenceManager hasEntry: anId) ifTrue: [self networkmanager referenceManager removeId: anId]