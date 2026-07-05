updating
applyPositionUpdateOnToken: aTTToken with: params

	| tileId aTTTile tokenId position |
	position := self extractPositionFrom: params.
	tileId := params at: 'referencedTile'.
	aTTTile := self networkFacade resolve: tileId.
	
	tokenId := self getIdOf: aTTToken.
	
	aTTToken moveToPosition: position onTile: aTTTile.
	
	(params at: 'receiver') = 'server' ifFalse: [^ self].
	params at: 'receiver' put: 'client'.
	self send: 'receivePositionUpdate:' to: tokenId with: params