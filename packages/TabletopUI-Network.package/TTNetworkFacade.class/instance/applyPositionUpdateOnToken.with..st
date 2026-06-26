accessing
applyPositionUpdateOnToken: aTTToken with: params


	| tileId aTTTile tokenId coordinates position dict |
	
	dict:= params at: 'position'.
	coordinates:= dict at: TTGameStateKeys keyPixelCoordinates.
	position:= (coordinates at: 'x') @ (coordinates at: 'y').
	tileId:= params at: 'referencedTile'.
	aTTTile:= self networkmanager referenceManager resolve: tileId.
	
	tokenId:= self getIdOf: aTTToken.
	
	aTTToken moveToPosition: position onTile: aTTTile.
	
	(self networkmanager isKindOf: TTServerNetworkManager) ifTrue:
	[self networkmanager send: 'receivePositionUpdate:' to: tokenId with: params.]