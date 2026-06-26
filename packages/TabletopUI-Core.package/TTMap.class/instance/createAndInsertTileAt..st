initialization
createAndInsertTileAt: aPoint

	| pixelPosition newTile tileId |
	
	pixelPosition := self convertTileCoordinatesToPixelPosition: aPoint.
	tileId := aPoint x asString, '_', aPoint y asString.
	newTile:= self networkFacade instantiate: TTTile withId: tileId.
	newTile 
		position: pixelPosition;
		mapCoordinates: aPoint;
		addDependent: self.
	self tiles at: aPoint y at: aPoint x put: newTile.
	self addMorph: newTile	