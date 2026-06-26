accessing
updateTile: aTTTile OccupyingToken: aTTToken 

	| tokenId tileId params |
	
	tokenId:= self getIdOf: aTTToken.
	tileId := self getIdOf: aTTTile.
	params := Dictionary new
		at: 'referencedToken' put: tokenId;
		yourself.
	
	self networkmanager send: 'receiveOccupyingTokenUpdate:' to: tileId with: params.