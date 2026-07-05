token placement
createTokenFor: aTTCharacter

	| tile mapCoordinates token |
	mapCoordinates := self mapCoordinatesOfFreeTile.
	tile := self tiles at: mapCoordinates x at: mapCoordinates y.
	token := self networkFacade instantiateTokenWithId: (self idForTokenOf: aTTCharacter name).
	token
		character: aTTCharacter;
		initializeFormFor: aTTCharacter;
		makeDraggable.
	self loadToken: token at: tile.
	self tokens add: token