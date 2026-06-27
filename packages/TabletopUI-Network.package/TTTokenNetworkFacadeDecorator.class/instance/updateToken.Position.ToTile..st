as yet unclassified
updateToken: aTTToken Position: aPosition ToTile: aTTTile 

	| tokenId tileId params |
	
	tokenId:= self networkFacade getIdOf: aTTToken.
	tileId := self networkFacade getIdOf: aTTTile.
	params := Dictionary new
		at: 'position' put: aPosition;
		at: 'referencedTile' put: tileId;
		at: 'receiver' put: 'server';
		yourself.
	
	self networkFacade send: 'receivePositionUpdate:' to: tokenId with: params.