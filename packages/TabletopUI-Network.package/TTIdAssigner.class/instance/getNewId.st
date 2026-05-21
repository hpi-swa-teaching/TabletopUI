accessing
getNewId

	self lowestUnusedId: self lowestUnusedId + 1.
	^ self lowestUnusedId - 1