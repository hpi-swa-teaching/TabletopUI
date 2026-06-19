drag and drop
removeFromMap

	(self owner isTTTile and: [self owner owner isKindOf: TTMap])
		ifTrue: [self owner owner removeToken: self]
		ifFalse: [self delete]