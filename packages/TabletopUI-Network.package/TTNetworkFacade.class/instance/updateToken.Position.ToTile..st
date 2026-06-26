accessing
updateToken: aTTToken Position: aPosition ToTile: aTTTile 

	| tokenId tileId params |
	
	tokenId:= self getIdOf: aTTToken.
	tileId := self getIdOf: aTTTile.
	params := Dictionary new
		at: 'position' put: aPosition;
		at: 'referencedTile' put: tileId;
		yourself.
	
	self networkmanager send: 'receivePositionUpdate:' to: tokenId with: params.