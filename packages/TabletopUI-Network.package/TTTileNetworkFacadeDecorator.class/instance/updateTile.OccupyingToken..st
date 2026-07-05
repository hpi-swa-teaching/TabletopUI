updating
updateTile: aTTTile OccupyingToken: aTTToken

	| tokenId tileId params |
	tokenId := self getIdOf: aTTToken.
	tileId := self getIdOf: aTTTile.
	params := Dictionary new
		at: 'referencedToken' put: tokenId;
		at: 'receiver' put: 'server';
		yourself.
	self send: 'receiveOccupyingTokenUpdate:' to: tileId with: params