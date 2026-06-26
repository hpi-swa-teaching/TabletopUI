token placement
createTokenFor: aTTCharacter

	| tile position token tokenId |
	
	position := self findFreeTile.
	tile := self tiles at: position x at: position y.
	tokenId:= 'token_', aTTCharacter name.
	token:= self networkFacade instantiate: TTToken withId: tokenId.
	token
		defaultTile: tile;
		character: aTTCharacter;
		initializeFormFor: aTTCharacter;
		makeDraggable.
	tile getOccupiedByToken: token.
	self tokens add: token