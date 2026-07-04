updating
applyPositionUpdateOnToken: aTTToken with: params

	| tileId aTTTile tokenId coordinates position dict |
	dict := params at: 'position'.
	coordinates := dict at: TTGameStateKeys keyPixelCoordinates.
	position := (coordinates at: 'x') @ (coordinates at: 'y').
	tileId := params at: 'referencedTile'.
	aTTTile := self networkFacade resolve: tileId.
	
	tokenId := self networkFacade getIdOf: aTTToken.
	
	aTTToken moveToPosition: position onTile: aTTTile.
	
	(params at: 'receiver') = 'server' ifFalse: [^ self].
	params at: 'receiver' put: 'client'.
	self networkFacade send: 'receivePositionUpdate:' to: tokenId with: params