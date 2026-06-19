token placement
removeToken: aTTToken

	(aTTToken owner isTTTile) ifTrue: [aTTToken owner occupied: false].
	self tokens remove: aTTToken ifAbsent: [].
	aTTToken delete