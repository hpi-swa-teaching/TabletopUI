accessing
applyOccupyingTokenUpdateOnTile: aTTTile with: params

	| tokenId aTTToken |
	
	tokenId:= params at: 'referencedToken'.
	aTTToken := self networkmanager referenceManager resolve: tokenId.
	
	aTTTile getOccupiedByToken: aTTToken.