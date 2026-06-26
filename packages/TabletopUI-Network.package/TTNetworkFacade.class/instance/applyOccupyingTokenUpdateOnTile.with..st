accessing
applyOccupyingTokenUpdateOnTile: aTTTile with: params

	| tokenId tileId aTTToken |
	
	tokenId:= params at: 'referencedToken'.
	aTTToken := self networkmanager referenceManager resolve: tokenId.
	
	tileId:= self getIdOf: aTTTile.
	
	aTTTile getOccupiedByToken: aTTToken.
	
	(self networkmanager isKindOf: TTServerNetworkManager) ifTrue:
	[self networkmanager send: 'receiveOccupyingTokenUpdate:' to: tileId with: params.]