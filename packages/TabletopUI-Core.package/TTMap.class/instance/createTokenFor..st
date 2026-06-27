token placement
createTokenFor: aTTCharacter

	| tile position token tokenId |
	
	position := self findFreeTile.
	tile := self tiles at: position x at: position y.
	tokenId:= 'token_', aTTCharacter name.
	token:= self networkFacade instantiateTokenWithId: tokenId.
	token
		character: aTTCharacter;
		initializeFormFor: aTTCharacter;
		makeDraggable.
	self loadToken: token at: tile.
	self tokens add: token