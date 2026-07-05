wrapping
ifContainsRemove: anId

	(self networkManager referenceManager hasEntry: anId) ifTrue: [self networkManager referenceManager removeId: anId]