initialization
createAndInsertTileAt: aPoint

	| pixelPosition newTile |
	
	pixelPosition := self convertTileCoordinatesToPixelPosition: aPoint.
	newTile := TTTile newWithPixelPosition: pixelPosition.
	self tiles at: aPoint y at: aPoint x put: newTile.
	self addMorph: newTile	