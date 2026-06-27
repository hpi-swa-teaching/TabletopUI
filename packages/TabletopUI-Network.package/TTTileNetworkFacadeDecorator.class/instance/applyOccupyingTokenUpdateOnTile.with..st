as yet unclassified
applyOccupyingTokenUpdateOnTile: aTTTile with: params

	| tokenId tileId aTTToken |
	
	tokenId:= params at: 'referencedToken'.
	aTTToken := self networkFacade resolve: tokenId.
	
	tileId:= self networkFacade getIdOf: aTTTile.
	
	aTTTile getOccupiedByToken: aTTToken.
	
	((params at: 'receiver') = 'server') ifTrue: [
		params at: 'receiver' put: 'client'.
		self networkFacade send: 'receiveOccupyingTokenUpdate:' to: tileId with: params.
	]