accessing
applyPositionUpdateOnToken: aTTToken with: params


	| tileId aTTTile coordinates position dict |
	
	dict:= params at: 'position'.
	coordinates:= dict at: TTGameStateKeys keyPixelCoordinates.
	position:= (coordinates at: 'x') @ (coordinates at: 'y').
	tileId:= params at: 'referencedTile'.
	aTTTile:= self networkmanager referenceManager resolve: tileId.
	
	aTTToken moveToPosition: position onTile: aTTTile.