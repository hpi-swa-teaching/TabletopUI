deleting
removeFromMap

	(self owner isTTTile and: [self owner isPartOfMap])
		ifTrue: [self owner removeToken: self]
		ifFalse: [self delete]