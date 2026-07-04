updating
updateTile: aTTTile OccupyingToken: aTTToken 

	| tokenId tileId params |
	
	tokenId:= self networkFacade getIdOf: aTTToken.
	tileId := self networkFacade getIdOf: aTTTile.
	params := Dictionary new
		at: 'referencedToken' put: tokenId;
		at: 'receiver' put: 'server';
		yourself.
	
	self networkFacade send: 'receiveOccupyingTokenUpdate:' to: tileId with: params.